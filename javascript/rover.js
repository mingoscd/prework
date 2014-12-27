var Grid = {
    init: function (x,y) {
        this.sizeX = x;
        this.sizeY = y;
        this.obstacles = [];
    },

    setObstacles: function (obstacles) {
        this.obstacles.push(obstacles);
    },

    thereIsObstacle: function (x, y) {
        for (var i = 0; i < this.obstacles.length; i++) {
            var obstacle = this.obstacles[i];
            if (obstacle[0] === x && obstacle[1] === y) {
                return true;
            }
        }
        return false;
    }
};

var Rover = {
    init: function (x, y, orientation) {
        this.position = [x, y];
        this.orientation = orientation;
    },

    move: function (commands) {
        for (var i = 0; i < commands.length; i++) {
            var c = commands[i];
            switch (c) {
                case 'f':
                    this.moveForward();
                break;
                case 'b':
                    this.moveBackward();
                break;
                case 'r':
                    this.turnRight();
                break;
                case 'l':
                    this.turnLeft();
                break;
                default:
                    console.log('Unrecognized command: ' + c);
                break;
            }
        }
    },

    moveForward: function () {
        var formerPosition = [ this.position[0], this.position[1] ];

        switch (this.orientation) {
            case 'n':
                this.position[1] = (this.position[1] + 1) % Grid.sizeY;
            break;
            case 'e':
                this.position[0] = (this.position[0] + 1) % Grid.sizeX;
            break;
            case 's':
                this.position[1] = (this.position[1] - 1);
                if (this.position[1] < 0) {
                    this.position[1] = Grid.sizeY + this.position[1];
                }
            break;
            case 'w':
                this.position[0] = (this.position[0] - 1);
                if (this.position[0] < 0) {
                    this.position[0] = Grid.sizeX + this.position[0];
                }
            break;
        }

        if (Grid.thereIsObstacle(this.position[0], this.position[1])) {
            this.position = formerPosition;
        }
    },

    moveBackward: function () {
        var formerPosition = [this.position[0], this.position[1]];
        switch (this.orientation) {
            case 's':
                this.position[1] = (this.position[1] + 1) % Grid.sizeY;
            break;
            case 'w':
                this.position[0] = (this.position[0] + 1) % Grid.sizeX;
            break;
            case 'n':
                this.position[1] = (this.position[1] - 1);
                if (this.position[1] < 0) {
                    this.position[1] = Grid.sizeY + this.position[1];
                }
            break;
            case 'e':
                this.position[0] = (this.position[0] - 1);
                if (this.position[0] < 0) {
                    this.position[0] = Grid.sizeX + this.position[0];
                }
            break;
        }

        if (Grid.thereIsObstacle(this.position[0], this.position[1])) {
            this.position = formerPosition;
        }
    },

    turnRight: function () {
        switch (this.direction) {
            case 'n':
                this.direction = 'e';
            break;
            case 'e':
                this.direction = 's';
            break;
            case 's':
                this.direction = 'w';
            break;
            case 'w':
                this.direction = 'n';
            break;
        }
    },

    turnLeft: function () {
        switch (this.direction) {
            case 'n':
                this.direction = 'w';
            break;
            case 'w':
                this.direction = 's';
            break;
            case 's':
                this.direction = 'e';
            break;
            case 'e':
                this.direction = 'n';
            break;
        }
    }
};