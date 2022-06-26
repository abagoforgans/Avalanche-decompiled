contract main {




// =====================  Runtime code  =====================


const sub_3156a9da(?) = 50


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address sub_9885fdfaAddress;
address usdcAddress;
mapping of uint256 deposited;
uint256 participants;
mapping of uint8 stor155;
uint8 isRunning;
uint256 sub_7e3de3a8;
uint256 totalDeposited;
uint256 tokenRate;
uint256 min;
array of uint256 sub_a577d45b;
uint256 timeInterval;
uint256 startTime;

function isRunning() payable {
    return bool(isRunning)
}

function tokenRate() payable {
    return tokenRate
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor155[address(arg1)])
}

function usdc() payable {
    return usdcAddress
}

function participants() payable {
    return participants
}

function startTime() payable {
    return startTime
}

function sub_7e3de3a8(?) payable {
    return sub_7e3de3a8
}

function owner() payable {
    return owner
}

function timeInterval() payable {
    return timeInterval
}

function sub_9885fdfa(?) payable {
    return sub_9885fdfaAddress
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor155[arg1])
}

function sub_a577d45b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a577d45b.length
    return sub_a577d45b[arg1]
}

function deposited(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposited[arg1]
}

function min() payable {
    return min
}

function totalDeposited() payable {
    return totalDeposited
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not isRunning:
        revert with 0, 'Sale isn't running'
    isRunning = 0
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    startTime = block.timestamp
    isRunning = 1
    emit 0x9512b068: 1, block.timestamp
}

function getInterval() payable {
    if not isRunning:
        return 0
    if block.timestamp <= startTime:
        return 0
    if block.timestamp < startTime:
        revert with 0, 17
    if not timeInterval:
        revert with 0, 18
    return (block.timestamp - startTime / timeInterval)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_37d319ad(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_a577d45b.length = 0
    idx = 0
    while sub_a577d45b.length > idx:
        sub_a577d45b[idx] = 0
        idx = idx + 1
        continue 
    sub_7e3de3a8 = arg1
    tokenRate = arg2
    min = arg3
    timeInterval = arg6
    idx = 0
    while idx < arg5:
        if 1 > !idx:
            revert with 0, 17
        if arg4 and idx + 1 > -1 / arg4:
            revert with 0, 17
        sub_a577d45b.length++
        mem[0] = 161
        sub_a577d45b[sub_a577d45b.length] = arg4 + (idx * arg4)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getMaxContribution() payable {
    if not sub_a577d45b.length:
        revert with 0, 'Max contributions not set'
    if not isRunning:
        if 0 < sub_a577d45b.length:
            return sub_a577d45b
    else:
        if block.timestamp <= startTime:
            if 0 < sub_a577d45b.length:
                return sub_a577d45b
        else:
            if block.timestamp < startTime:
                revert with 0, 17
            if not timeInterval:
                revert with 0, 18
            if block.timestamp - startTime / timeInterval < sub_a577d45b.length:
                return sub_a577d45b[block.timestamp - stor163 / stor162]
    if sub_a577d45b.length < 1:
        revert with 0, 17
    if sub_a577d45b.length - 1 >= sub_a577d45b.length:
        revert with 0, 50
    return sub_a577d45b[sub_a577d45b.length]
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_9885fdfaAddress = arg1
    usdcAddress = arg2
}

function addToWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1.length > 50:
        revert with 0, 'Too many addresses'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 155
        stor155[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not isRunning:
        revert with 0, 'Presale not running'
    if not stor155[msg.sender]:
        revert with 0, 'User not whitelisted'
    if totalDeposited > !arg1:
        revert with 0, 17
    if totalDeposited + arg1 > sub_7e3de3a8:
        revert with 0, 'Exceeded raise aim'
    if not sub_a577d45b.length:
        revert with 0, 'Max contributions not set'
    if not isRunning:
        if 0 < sub_a577d45b.length:
            if deposited[msg.sender] > !arg1:
                revert with 0, 17
            if deposited[msg.sender] + arg1 > sub_a577d45b:
                revert with 0, 'Cant deposit more than max'
        else:
            if sub_a577d45b.length < 1:
                revert with 0, 17
            if sub_a577d45b.length - 1 >= sub_a577d45b.length:
                revert with 0, 50
            if deposited[msg.sender] > !arg1:
                revert with 0, 17
            if deposited[msg.sender] + arg1 > sub_a577d45b[sub_a577d45b.length]:
                revert with 0, 'Cant deposit more than max'
    else:
        if block.timestamp <= startTime:
            if 0 < sub_a577d45b.length:
                if deposited[msg.sender] > !arg1:
                    revert with 0, 17
                if deposited[msg.sender] + arg1 > sub_a577d45b:
                    revert with 0, 'Cant deposit more than max'
            else:
                if sub_a577d45b.length < 1:
                    revert with 0, 17
                if sub_a577d45b.length - 1 >= sub_a577d45b.length:
                    revert with 0, 50
                if deposited[msg.sender] > !arg1:
                    revert with 0, 17
                if deposited[msg.sender] + arg1 > sub_a577d45b[sub_a577d45b.length]:
                    revert with 0, 'Cant deposit more than max'
        else:
            if block.timestamp < startTime:
                revert with 0, 17
            if not timeInterval:
                revert with 0, 18
            if block.timestamp - startTime / timeInterval < sub_a577d45b.length:
                if deposited[msg.sender] > !arg1:
                    revert with 0, 17
                if deposited[msg.sender] + arg1 > sub_a577d45b[block.timestamp - stor163 / stor162]:
                    revert with 0, 'Cant deposit more than max'
            else:
                if sub_a577d45b.length < 1:
                    revert with 0, 17
                if sub_a577d45b.length - 1 >= sub_a577d45b.length:
                    revert with 0, 50
                if deposited[msg.sender] > !arg1:
                    revert with 0, 17
                if deposited[msg.sender] + arg1 > sub_a577d45b[sub_a577d45b.length]:
                    revert with 0, 'Cant deposit more than max'
    if arg1 < min:
        revert with 0, 'Cant deposit less than min'
    if arg1 <= 0:
        revert with 0, 'Amount must be above 0'
    if not deposited[msg.sender]:
        if participants == -1:
            revert with 0, 17
        participants++
    if deposited[msg.sender] > !arg1:
        revert with 0, 17
    deposited[msg.sender] += arg1
    if totalDeposited > !arg1:
        revert with 0, 17
    totalDeposited += arg1
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and tokenRate > -1 / arg1:
            revert with 0, 17
        require ext_code.size(usdcAddress)
        call usdcAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_9885fdfaAddress)
        call sub_9885fdfaAddress.issue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1 * tokenRate
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg1 and tokenRate > -1 / arg1:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            require ext_code.size(usdcAddress)
            call usdcAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_9885fdfaAddress)
            call sub_9885fdfaAddress.issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 * tokenRate / 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and tokenRate > -1 / arg1:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            require ext_code.size(usdcAddress)
            call usdcAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_9885fdfaAddress)
            call sub_9885fdfaAddress.issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 * tokenRate / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(msg.sender, arg1);
    stor101 = 1
}



}
