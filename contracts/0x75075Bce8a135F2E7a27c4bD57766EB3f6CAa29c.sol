contract main {




// =====================  Runtime code  =====================


const masterChef = 0x1495b7e8d7e9700bd0726f1705e864265724f6e2

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const lpToken = 0x7b7617c7b2236d7871741783cae8bcc222c2e05d

const pid = 0

const token = 0x6d923f688c7ff287dc3a5943caeefc994f97b290

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


array of address path;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 stor2;
uint256 totalPoints;
uint256 multiplier;

function multiplier() {
    return multiplier
}

function totalPoints() {
    return totalPoints
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] and multiplier > -1 / stor2[address(arg1)]:
        revert with 'NH{q', 17
    return (stor2[address(arg1)] * multiplier)
}

function withdrawFee() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw() {
    require not uint8(stor1.field_160)
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
    call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0x5312ea8e with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawRaw() {
    require uint8(stor1.field_160)
    stor2[address(msg.sender)] = 0
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and stor2[address(msg.sender)] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalPoints:
        revert with 'NH{q', 18
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    call 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * stor2[address(msg.sender)] / totalPoints
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and stor2[address(msg.sender)] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalPoints:
        revert with 'NH{q', 18
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    call 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * stor2[address(msg.sender)] / totalPoints
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalPoints < stor2[address(msg.sender)]:
        revert with 'NH{q', 17
    totalPoints -= stor2[address(msg.sender)]
}

function withdraw() {
    require not uint8(stor1.field_160)
    require msg.sender == owner
    if totalPoints < stor2[address(msg.sender)]:
        revert with 'NH{q', 17
    totalPoints -= stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    if stor2[address(msg.sender)] and multiplier > -1 / stor2[address(msg.sender)]:
        revert with 'NH{q', 17
    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
    call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0x441a3e70 with:
         gas gas_remaining wei
        args 0, stor2[address(msg.sender)] * multiplier / 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    call 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and stor2[address(msg.sender)] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalPoints:
        revert with 'NH{q', 18
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    call 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * stor2[address(msg.sender)] / totalPoints
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pendingTokens() {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = this.address
    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
    staticcall 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 == mem[96 len 4], 0
    require 0, address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _6 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    _7 = mem[0, mem[164 len 28] + 96]
    if mem[0, mem[164 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _25 = mem[192]
        require mem[192] == mem[192]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
        staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31]
        if _4 > -_25 - 1:
            revert with 'NH{q', 17
        if _4 + _25 > -mem[_31] - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = _4 + _25 + mem[_31]
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        _26 = mem[192]
        require mem[192] == mem[192]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
        staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_32] == mem[_32]
        if _4 > -_26 - 1:
            revert with 'NH{q', 17
        if _4 + _26 > -mem[_32] - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = _4 + _26 + mem[_32]
    return memory
      from mem[64]
       len 32
}

function reinvest() {
    require not uint8(stor1.field_160)
    require totalPoints > 0
    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
    call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if ext_call.return_data[0] and 51 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        t = (2 * ceil32(return_data.size)) + 292
        while idx < path.length:
            mem[t] = path[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 51 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, path.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * path.length]
    else:
        require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
        call 0x6d923f688c7ff287dc3a5943caeefc994f97b290.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] and 51 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 292
        while idx < path.length:
            mem[t] = path[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 51 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, path.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * path.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] < 51 * ext_call.return_data[0] / 100:
        revert with 'NH{q', 17
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0x6d923f688c7ff287dc3a5943caeefc994f97b290, ext_call.return_data[0] - (51 * ext_call.return_data[0] / 100), 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalPoints:
        revert with 'NH{q', 18
    if multiplier > -(10^6 * ext_call.return_data[0] / totalPoints) - 1:
        revert with 'NH{q', 17
    multiplier += 10^6 * ext_call.return_data[0] / totalPoints
    if this.address != msg.sender:
        if owner != msg.sender:
            require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
            staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
            call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor1.field_160)
    require arg1 > 0
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    call 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
    staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x1495b7e8d7e9700bd0726f1705e864265724f6e2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg1:
        if totalPoints > 0:
            require not uint8(stor1.field_160)
            require totalPoints > 0
            require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
            call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
            staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
            staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if ext_call.return_data[0] and 51 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < path.length:
                    mem[t] = path[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 51 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, path.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * path.length]
            else:
                require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
                call 0x6d923f688c7ff287dc3a5943caeefc994f97b290.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and 51 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = 0
                s = 0
                t = (7 * ceil32(return_data.size)) + 292
                while idx < path.length:
                    mem[t] = path[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 51 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, path.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * path.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < 51 * ext_call.return_data[0] / 100:
                revert with 'NH{q', 17
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0x6d923f688c7ff287dc3a5943caeefc994f97b290, ext_call.return_data[0] - (51 * ext_call.return_data[0] / 100), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
            staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not totalPoints:
                revert with 'NH{q', 18
            if multiplier > -(10^6 * ext_call.return_data[0] / totalPoints) - 1:
                revert with 'NH{q', 17
            multiplier += 10^6 * ext_call.return_data[0] / totalPoints
            if this.address != msg.sender:
                if owner != msg.sender:
                    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
                    staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
                    call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
        call 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1495b7e8d7e9700bd0726f1705e864265724f6e2, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalPoints > 0:
            require not uint8(stor1.field_160)
            require totalPoints > 0
            require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
            call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
            staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
            staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if ext_call.return_data[0] and 51 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = 0
                s = 0
                t = (7 * ceil32(return_data.size)) + 292
                while idx < path.length:
                    mem[t] = path[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 51 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, path.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * path.length]
            else:
                require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
                call 0x6d923f688c7ff287dc3a5943caeefc994f97b290.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and 51 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = 0
                s = 0
                t = (8 * ceil32(return_data.size)) + 292
                while idx < path.length:
                    mem[t] = path[s]
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 51 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, path.length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * path.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < 51 * ext_call.return_data[0] / 100:
                revert with 'NH{q', 17
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0x6d923f688c7ff287dc3a5943caeefc994f97b290, ext_call.return_data[0] - (51 * ext_call.return_data[0] / 100), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
            staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not totalPoints:
                revert with 'NH{q', 18
            if multiplier > -(10^6 * ext_call.return_data[0] / totalPoints) - 1:
                revert with 'NH{q', 17
            multiplier += 10^6 * ext_call.return_data[0] / totalPoints
            if this.address != msg.sender:
                if owner != msg.sender:
                    require ext_code.size(0x7b7617c7b2236d7871741783cae8bcc222c2e05d)
                    staticcall 0x7b7617c7b2236d7871741783cae8bcc222c2e05d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
                    call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and 10^6 > -1 / arg1:
        revert with 'NH{q', 17
    if not multiplier:
        revert with 'NH{q', 18
    if stor2[address(msg.sender)] > -(10^6 * arg1 / multiplier) - 1:
        revert with 'NH{q', 17
    stor2[address(msg.sender)] += 10^6 * arg1 / multiplier
    if totalPoints > -(10^6 * arg1 / multiplier) - 1:
        revert with 'NH{q', 17
    totalPoints += 10^6 * arg1 / multiplier
    require ext_code.size(0x1495b7e8d7e9700bd0726f1705e864265724f6e2)
    call 0x1495b7e8d7e9700bd0726f1705e864265724f6e2.0xe2bbb158 with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
