const std = @import("std");

const Array = packed struct {
    const Self = @This();

    allocator: std.mem.Allocator,
    entries: std.ArrayList(f64),
    size: usize,

    fn init(
        allocator: std.mem.Allocator,
        size: usize
    ) !Self {
        return Self{
            .allocator = allocator,
            .entries = std.ArrayList(f64).init(allocator),
            .size = size
        };
    }

    fn resize(self: *Self, i: usize, j: usize) !void {
        self.entries.resize(new_len: usize)
    }

    fn get(self: *Self, index: usize) *f64 {
        return &self.entries.items[index];
    }
};

const NeutralMatrix = packed struct {
    _matrix: Matrix,

    fn init() !void {

    }
};

const Matrix = packed struct {
    const Self = @This();

    n: usize,
    p: usize,
    allocator: std.mem.Allocator,
    entries: std.ArrayList(f64),
    size: usize,

    fn init(
        allocator: std.mem.Allocator,
        size: usize
    ) !Self {
        return Self{
            .allocator = allocator,
            .entries = std.ArrayList(f64).init(allocator),
            .size = size
        };
    }

    fn idx(self: *Self) usize {
        return self.n * self.p;
    }

    fn resize(self: *Self, lines: usize, columns: usize) !void {
        if(lines == self.n and columns == self.p) return;

        self.n = lines;
        self.p = columns;

        const size = self.idx();
        if (self.entries.capacity < size) {
            try self.entries.ensureTotalCapacity(size);
        }

        try self.entries.resize(size);
    }

    fn resize_and_fill(self: *Self, lines: usize, columns: usize, value: f64) !void {
        const preidx = self.idx();
        try self.resize(lines, columns);
        const postidx = self.idx();
        
        if (postidx > preidx) {
            const slice = self.entries.items[preidx..postidx];
            @memset(slice, value);
        }
    }

    fn at(self: *Self, index: usize) *f64 {
        return &self.entries.items[index];
    }

    fn set(self: *Self, index: usize, value: *f64) !void {

    }
};