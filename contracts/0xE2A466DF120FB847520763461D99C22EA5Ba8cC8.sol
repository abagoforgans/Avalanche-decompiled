contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#
const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor1;
address controllerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor54;
array of struct stor55;
uint8 decimals;
uint256 totalSupply;
uint256 sub_4dac5650;
address underlyingAddress;
uint128 stor60;
uint128 stor60; offset 128
uint256 stor60; offset 1
uint256 collateralizationRatio;
uint256 sub_934472f5;
mapping of uint256 sub_f46c3c51;
uint8 isActive;
uint256 stor63;

function totalSupply() payable {
    return totalSupply
}

function isActive() payable {
    return bool(uint8(isActive))
}

function decimals() payable {
    return decimals
}

function sub_4dac5650(?) payable {
    return sub_4dac5650
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function sub_934472f5(?) payable {
    return sub_934472f5
}

function collateralizationRatio() payable {
    return collateralizationRatio
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function sub_f46c3c51(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f46c3c51[arg1]
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'approve-from-the-zero-address'
    if not arg1:
        revert with 0, 'approve-to-the-zero-address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function governor() payable {
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'approve-from-the-zero-address'
    if not arg1:
        revert with 0, 'approve-to-the-zero-address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 'decreased-allowance-below-zero'
    if not msg.sender:
        revert with 0, 'approve-from-the-zero-address'
    if not arg1:
        revert with 0, 'approve-to-the-zero-address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function toggleIsActive() payable {
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    emit 0xe922a12e: bool(uint8(isActive)), not uint8(isActive)
    uint256(stor63) = not uint8(isActive) or Mask(248, 8, uint256(stor63))
}

function sub_5af52016(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if sub_934472f5 == arg1:
        revert with 0, 'new-same-as-current'
    emit 0x13a5338c: sub_934472f5, arg1
    sub_934472f5 = arg1
}

function sub_f9bd04e4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if sub_4dac5650 == arg1:
        revert with 0, 'new-same-as-current'
    emit 0xc58cd613: sub_4dac5650, arg1
    sub_4dac5650 = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'new-controller-address-is-zero'
    controllerAddress = arg1
}

function sub_c2d275ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if uint128(arg1) > 10^18:
        revert with 0, 'collaterization-ratio-gt-100%'
    if collateralizationRatio == uint128(arg1):
        revert with 0, 'new-same-as-current'
    emit 0xf84d4544: collateralizationRatio, uint128(arg1)
    uint128(stor60.field_0) = uint128(arg1)
    uint128(stor60.field_128) = 0
}

function unlockedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xdde3ab95 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[128] <= 0:
        return 0
    if ext_call.return_data[128] and 10^18 > -1 / ext_call.return_data[128]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[128] > !uint255(stor60.field_1):
        revert with 0, 17
    if not collateralizationRatio:
        revert with 0, 18
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xeaada382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x57f1915d with:
            gas gas_remaining wei
           args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(arg1)] < ext_call.return_data[0]:
        return balanceOf[address(arg1)]
    return ext_call.return_data[0]
}

function lockedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xdde3ab95 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[128] <= 0:
        return balanceOf[address(arg1)]
    if ext_call.return_data[128] and 10^18 > -1 / ext_call.return_data[128]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[128] > !uint255(stor60.field_1):
        revert with 0, 17
    if not collateralizationRatio:
        revert with 0, 18
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xeaada382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x57f1915d with:
            gas gas_remaining wei
           args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(arg1)] < ext_call.return_data[0]:
        return 0
    return (balanceOf[address(arg1)] - ext_call.return_data[0])
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'not-controller'
    mem[96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x3605b51b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require (32 * _7) + _6 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _6 + 128
    while idx < (32 * _7) + _6 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _51 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg1
        require ext_code.size(address(_51))
        call address(_51).0x1b30f0c0 with:
             gas gas_remaining wei
            args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        revert with 0, 'burn-from-the-zero-address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'burn-amount-exceeds-balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit 0xfeddf252: arg2, arg1, 0
    if not balanceOf[address(arg1)]:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x275038d0 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function seize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if controllerAddress != msg.sender:
        revert with 0, 'not-controller'
    mem[96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x3605b51b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require (32 * _7) + _6 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _6 + 128
    while idx < (32 * _7) + _6 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _67 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = arg2
        require ext_code.size(address(_67))
        call address(_67).0xb17b23a0 with:
             gas gas_remaining wei
            args this.address, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        revert with 0, 'transfer-from-the-zero-address'
    if not arg2:
        revert with 0, 'transfer-to-the-zero-address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'transfer-amount-exceeds-balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if balanceOf[address(arg2)] < arg3:
        revert with 0, 17
    if not balanceOf[address(arg2)] - arg3:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3f5fc131 with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not balanceOf[address(arg1)]:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x275038d0 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'not-controller'
    if not uint8(isActive):
        revert with 0, 'deposit-token-is-inactive'
    mem[96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x3605b51b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _9 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require (32 * _9) + _8 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _8 + 128
    while idx < (32 * _9) + _8 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < _9:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _70 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg1
        require ext_code.size(address(_70))
        call address(_70).0x1b30f0c0 with:
             gas gas_remaining wei
            args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        revert with 0, 'mint-to-the-zero-address'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xeaada382 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] == mem[_74 + 12 len 20]
    if totalSupply > !arg2:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = totalSupply + arg2
    require ext_code.size(address(_75))
    staticcall address(_75).0xee957996 with:
            gas gas_remaining wei
           args address(this.address), totalSupply + arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_78] > sub_4dac5650:
        revert with 0, 'surpass-max-total-supply'
    sub_f46c3c51[address(arg1)] = block.timestamp
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit 0xfeddf252: arg2, 0, arg1
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    if not balanceOf[address(arg1)] - arg2:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3f5fc131 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_ea180f27(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] == uint8(cd[100])
    require cd[132] == uint128(cd[132])
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not address(cd[4]):
        revert with 0, 'underlying-is-null'
    if not address(cd[36]):
        revert with 0, 'controller-address-is-zero'
    if uint128(cd[132]) > 10^18:
        revert with 0, 'collaterization-ratio-gt-100%'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            uint8(stor0.field_8) = 0
    controllerAddress = address(cd[36])
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor54.length) = 52
        stor54.length.field_8 = 'Tokenized deposit position' / 256
        idx = 0
        while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        uint8(stor54.length) = 52
        stor54.length.field_8 = 'Tokenized deposit position' / 256
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor55.length = 0
            idx = 0
            while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor55.length = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor55[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor55.length = 0
            idx = 0
            while stor55.length.field_1 + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor55.length = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor55[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor55.length.field_1 + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
    underlyingAddress = address(cd[4])
    sub_934472f5 = 0
    uint8(isActive) = 1
    decimals = uint8(cd[100])
    uint128(stor60.field_0) = uint128(cd[132])
    uint128(stor60.field_128) = 0
    sub_4dac5650 = cd[164]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xdde3ab95 with:
            gas gas_remaining wei
           args msg.sender
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[128] <= 0:
        if 0 < arg2:
            revert with 0, 'not-enough-free-balance'
        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
            revert with 0, 17
        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
            revert with 0, 'min-deposit-time-have-not-passed'
        mem[ceil32(return_data.size) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x3605b51b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _17 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _18 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require (32 * _18) + _17 + 32 <= return_data.size
        s = (2 * ceil32(return_data.size)) + 128
        idx = ceil32(return_data.size) + _17 + 128
        while idx < (32 * _18) + ceil32(return_data.size) + _17 + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx < _18:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _271 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            require ext_code.size(address(_271))
            call address(_271).0xb17b23a0 with:
                 gas gas_remaining wei
                args this.address, msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if ext_call.return_data[128] and 10^18 > -1 / ext_call.return_data[128]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[128] > !uint255(stor60.field_1):
            revert with 0, 17
        if not collateralizationRatio:
            revert with 0, 18
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x57f1915d with:
                gas gas_remaining wei
               args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'not-enough-free-balance'
            if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                revert with 0, 17
            if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                revert with 0, 'min-deposit-time-have-not-passed'
            mem[(4 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _75 = mem[(4 * ceil32(return_data.size)) + 96]
            require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _81 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97
            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            require (32 * _81) + _75 + 32 <= return_data.size
            s = (6 * ceil32(return_data.size)) + 128
            idx = (4 * ceil32(return_data.size)) + _75 + 128
            while idx < (32 * _81) + (4 * ceil32(return_data.size)) + _75 + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            idx = 0
            while idx < _81:
                if idx >= mem[(6 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _275 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg1
                require ext_code.size(address(_275))
                call address(_275).0xb17b23a0 with:
                     gas gas_remaining wei
                    args this.address, msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if ext_call.return_data[0] < arg2:
                revert with 0, 'not-enough-free-balance'
            if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                revert with 0, 17
            if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                revert with 0, 'min-deposit-time-have-not-passed'
            mem[(4 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _78 = mem[(4 * ceil32(return_data.size)) + 96]
            require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _83 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97
            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            require (32 * _83) + _78 + 32 <= return_data.size
            s = (6 * ceil32(return_data.size)) + 128
            idx = (4 * ceil32(return_data.size)) + _78 + 128
            while idx < (32 * _83) + (4 * ceil32(return_data.size)) + _78 + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            idx = 0
            while idx < _83:
                if idx >= mem[(6 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _279 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg1
                require ext_code.size(address(_279))
                call address(_279).0xb17b23a0 with:
                     gas gas_remaining wei
                    args this.address, msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if not msg.sender:
        revert with 0, 'transfer-from-the-zero-address'
    if not arg1:
        revert with 0, 'transfer-to-the-zero-address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'transfer-amount-exceeds-balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    if not balanceOf[address(arg1)] - arg2:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3f5fc131 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not balanceOf[address(msg.sender)]:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x275038d0 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xdde3ab95 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[128] <= 0:
        if 0 < arg3:
            revert with 0, 'not-enough-free-balance'
        if sub_f46c3c51[address(arg1)] > !sub_934472f5:
            revert with 0, 17
        if block.timestamp < sub_f46c3c51[address(arg1)] + sub_934472f5:
            revert with 0, 'min-deposit-time-have-not-passed'
        mem[ceil32(return_data.size) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x3605b51b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _19 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _20 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require (32 * _20) + _19 + 32 <= return_data.size
        s = (2 * ceil32(return_data.size)) + 128
        idx = ceil32(return_data.size) + _19 + 128
        while idx < (32 * _20) + ceil32(return_data.size) + _19 + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx < _20:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _609 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = arg2
            require ext_code.size(address(_609))
            call address(_609).0xb17b23a0 with:
                 gas gas_remaining wei
                args this.address, address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if ext_call.return_data[128] and 10^18 > -1 / ext_call.return_data[128]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[128] > !uint255(stor60.field_1):
            revert with 0, 17
        if not collateralizationRatio:
            revert with 0, 18
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x57f1915d with:
                gas gas_remaining wei
               args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if balanceOf[address(arg1)] < ext_call.return_data[0]:
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'not-enough-free-balance'
            if sub_f46c3c51[address(arg1)] > !sub_934472f5:
                revert with 0, 17
            if block.timestamp < sub_f46c3c51[address(arg1)] + sub_934472f5:
                revert with 0, 'min-deposit-time-have-not-passed'
            mem[(4 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _92 = mem[(4 * ceil32(return_data.size)) + 96]
            require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _104 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97
            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            require (32 * _104) + _92 + 32 <= return_data.size
            s = (6 * ceil32(return_data.size)) + 128
            idx = (4 * ceil32(return_data.size)) + _92 + 128
            while idx < (32 * _104) + (4 * ceil32(return_data.size)) + _92 + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            idx = 0
            while idx < _104:
                if idx >= mem[(6 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _613 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg2
                require ext_code.size(address(_613))
                call address(_613).0xb17b23a0 with:
                     gas gas_remaining wei
                    args this.address, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if ext_call.return_data[0] < arg3:
                revert with 0, 'not-enough-free-balance'
            if sub_f46c3c51[address(arg1)] > !sub_934472f5:
                revert with 0, 17
            if block.timestamp < sub_f46c3c51[address(arg1)] + sub_934472f5:
                revert with 0, 'min-deposit-time-have-not-passed'
            mem[(4 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _98 = mem[(4 * ceil32(return_data.size)) + 96]
            require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _111 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97
            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
            require (32 * _111) + _98 + 32 <= return_data.size
            s = (6 * ceil32(return_data.size)) + 128
            idx = (4 * ceil32(return_data.size)) + _98 + 128
            while idx < (32 * _111) + (4 * ceil32(return_data.size)) + _98 + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            idx = 0
            while idx < _111:
                if idx >= mem[(6 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                _617 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg2
                require ext_code.size(address(_617))
                call address(_617).0xb17b23a0 with:
                     gas gas_remaining wei
                    args this.address, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if not arg1:
        revert with 0, 'transfer-from-the-zero-address'
    if not arg2:
        revert with 0, 'transfer-to-the-zero-address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'transfer-amount-exceeds-balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if balanceOf[address(arg2)] < arg3:
        revert with 0, 17
    if not balanceOf[address(arg2)] - arg3:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3f5fc131 with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not balanceOf[address(arg1)]:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x275038d0 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if allowance[address(arg1)][msg.sender] != -1:
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 'amount-exceeds-allowance'
        if not arg1:
            revert with 0, 'approve-from-the-zero-address'
        if not msg.sender:
            revert with 0, 'approve-to-the-zero-address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    stor1 = 1
    return 1
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(controllerAddress)
    call controllerAddress.0x5c975abb with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(isActive):
        revert with 0, 'deposit-token-is-inactive'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x3af5be47 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'collateral-inexistent'
    if arg1 <= 0:
        revert with 0, 'amount-is-zero'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x61d027b3 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 196] = arg1
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            mem[(6 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(controllerAddress)
            call controllerAddress.0x67a52793 with:
                 gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(isActive):
                revert with 0, 'deposit-token-is-inactive'
            mem[(8 * ceil32(return_data.size)) + 292] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3041 = mem[(8 * ceil32(return_data.size)) + 292]
                require mem[(8 * ceil32(return_data.size)) + 292] <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 323 < (8 * ceil32(return_data.size)) + return_data.size + 292
                _3063 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293
                mem[(10 * ceil32(return_data.size)) + 292] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                require (32 * _3063) + _3041 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + 324
                idx = (8 * ceil32(return_data.size)) + _3041 + 324
                while idx < (32 * _3063) + (8 * ceil32(return_data.size)) + _3041 + 324:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3063:
                    if idx >= mem[(10 * ceil32(return_data.size)) + 292]:
                        revert with 0, 50
                    _8986 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + 324]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(_8986))
                    call address(_8986).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not arg2:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9159 = mem[_9127]
                require mem[_9127] == mem[_9127 + 12 len 20]
                if totalSupply > !0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9159))
                staticcall address(_9159).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9255] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
            else:
                _3109 = mem[(8 * ceil32(return_data.size)) + 292]
                require mem[(8 * ceil32(return_data.size)) + 292] <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 323 < (8 * ceil32(return_data.size)) + return_data.size + 292
                _3123 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293
                mem[(10 * ceil32(return_data.size)) + 292] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                require (32 * _3123) + _3109 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + 324
                idx = (8 * ceil32(return_data.size)) + _3109 + 324
                while idx < (32 * _3123) + (8 * ceil32(return_data.size)) + _3109 + 324:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3123:
                    if idx >= mem[(10 * ceil32(return_data.size)) + 292]:
                        revert with 0, 50
                    _8992 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + 324]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    require ext_code.size(address(_8992))
                    call address(_8992).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not address(ext_call.return_data[0]):
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9160 = mem[_9128]
                require mem[_9128] == mem[_9128 + 12 len 20]
                if totalSupply > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9160))
                staticcall address(_9160).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9256] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                sub_f46c3c51[address(ext_call.return_data[0])] = block.timestamp
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, 0, address(ext_call.return_data[0])
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 52
                if balanceOf[address(ext_call.return_data[0])] < 0:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])]:
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9783 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9855 = mem[_9783]
                    require mem[_9783] <= test266151307()
                    require _9783 + mem[_9783] + 31 < _9783 + return_data.size
                    _9939 = mem[_9783 + mem[_9783]]
                    if mem[_9783 + mem[_9783]] > test266151307():
                        revert with 0, 65
                    if _9783 + ceil32(return_data.size) + ceil32(32 * mem[_9783 + mem[_9783]]) + 1 > test266151307() or ceil32(32 * mem[_9783 + mem[_9783]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9783 + ceil32(return_data.size) + ceil32(32 * mem[_9783 + mem[_9783]]) + 1
                    mem[_9783 + ceil32(return_data.size)] = _9939
                    require (32 * _9939) + _9855 + 32 <= return_data.size
                    s = _9783 + ceil32(return_data.size) + 32
                    idx = _9783 + _9855 + 32
                    while idx < (32 * _9939) + _9783 + _9855 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _9939:
                        if idx >= mem[_9783 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13290 = mem[(32 * idx) + _9783 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13290))
                        call address(_13290).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13551 = mem[_13503]
                    require mem[_13503] == mem[_13503 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13551))
                    staticcall address(_13551).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13695 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13695] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
                else:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x3f5fc131 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9940 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10011 = mem[_9940]
                    require mem[_9940] <= test266151307()
                    require _9940 + mem[_9940] + 31 < _9940 + return_data.size
                    _10035 = mem[_9940 + mem[_9940]]
                    if mem[_9940 + mem[_9940]] > test266151307():
                        revert with 0, 65
                    if _9940 + ceil32(return_data.size) + ceil32(32 * mem[_9940 + mem[_9940]]) + 1 > test266151307() or ceil32(32 * mem[_9940 + mem[_9940]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9940 + ceil32(return_data.size) + ceil32(32 * mem[_9940 + mem[_9940]]) + 1
                    mem[_9940 + ceil32(return_data.size)] = _10035
                    require (32 * _10035) + _10011 + 32 <= return_data.size
                    s = _9940 + ceil32(return_data.size) + 32
                    idx = _9940 + _10011 + 32
                    while idx < (32 * _10035) + _9940 + _10011 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _10035:
                        if idx >= mem[_9940 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13296 = mem[(32 * idx) + _9940 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13296))
                        call address(_13296).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13552 = mem[_13504]
                    require mem[_13504] == mem[_13504 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13552))
                    staticcall address(_13552).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13696 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13696] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
        else:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(controllerAddress)
            call controllerAddress.0x67a52793 with:
                 gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(isActive):
                revert with 0, 'deposit-token-is-inactive'
            mem[(8 * ceil32(return_data.size)) + 292] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3124 = mem[(8 * ceil32(return_data.size)) + 292]
                require mem[(8 * ceil32(return_data.size)) + 292] <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 323 < (8 * ceil32(return_data.size)) + return_data.size + 292
                _3165 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293
                mem[(10 * ceil32(return_data.size)) + 292] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                require (32 * _3165) + _3124 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + 324
                idx = (8 * ceil32(return_data.size)) + _3124 + 324
                while idx < (32 * _3165) + (8 * ceil32(return_data.size)) + _3124 + 324:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3165:
                    if idx >= mem[(10 * ceil32(return_data.size)) + 292]:
                        revert with 0, 50
                    _9010 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + 324]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(_9010))
                    call address(_9010).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not arg2:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9163 = mem[_9131]
                require mem[_9131] == mem[_9131 + 12 len 20]
                if totalSupply > !0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9163))
                staticcall address(_9163).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9259] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
            else:
                _3228 = mem[(8 * ceil32(return_data.size)) + 292]
                require mem[(8 * ceil32(return_data.size)) + 292] <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 323 < (8 * ceil32(return_data.size)) + return_data.size + 292
                _3263 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]) + 293
                mem[(10 * ceil32(return_data.size)) + 292] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 292] + 292]
                require (32 * _3263) + _3228 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + 324
                idx = (8 * ceil32(return_data.size)) + _3228 + 324
                while idx < (32 * _3263) + (8 * ceil32(return_data.size)) + _3228 + 324:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3263:
                    if idx >= mem[(10 * ceil32(return_data.size)) + 292]:
                        revert with 0, 50
                    _9016 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + 324]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    require ext_code.size(address(_9016))
                    call address(_9016).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not address(ext_call.return_data[0]):
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9164 = mem[_9132]
                require mem[_9132] == mem[_9132 + 12 len 20]
                if totalSupply > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9164))
                staticcall address(_9164).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9260] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                sub_f46c3c51[address(ext_call.return_data[0])] = block.timestamp
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, 0, address(ext_call.return_data[0])
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 52
                if balanceOf[address(ext_call.return_data[0])] < 0:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])]:
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9789 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9867 = mem[_9789]
                    require mem[_9789] <= test266151307()
                    require _9789 + mem[_9789] + 31 < _9789 + return_data.size
                    _9948 = mem[_9789 + mem[_9789]]
                    if mem[_9789 + mem[_9789]] > test266151307():
                        revert with 0, 65
                    if _9789 + ceil32(return_data.size) + ceil32(32 * mem[_9789 + mem[_9789]]) + 1 > test266151307() or ceil32(32 * mem[_9789 + mem[_9789]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9789 + ceil32(return_data.size) + ceil32(32 * mem[_9789 + mem[_9789]]) + 1
                    mem[_9789 + ceil32(return_data.size)] = _9948
                    require (32 * _9948) + _9867 + 32 <= return_data.size
                    s = _9789 + ceil32(return_data.size) + 32
                    idx = _9789 + _9867 + 32
                    while idx < (32 * _9948) + _9789 + _9867 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _9948:
                        if idx >= mem[_9789 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13326 = mem[(32 * idx) + _9789 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13326))
                        call address(_13326).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13557 = mem[_13509]
                    require mem[_13509] == mem[_13509 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13557))
                    staticcall address(_13557).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13701] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
                else:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x3f5fc131 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9949 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10014 = mem[_9949]
                    require mem[_9949] <= test266151307()
                    require _9949 + mem[_9949] + 31 < _9949 + return_data.size
                    _10038 = mem[_9949 + mem[_9949]]
                    if mem[_9949 + mem[_9949]] > test266151307():
                        revert with 0, 65
                    if _9949 + ceil32(return_data.size) + ceil32(32 * mem[_9949 + mem[_9949]]) + 1 > test266151307() or ceil32(32 * mem[_9949 + mem[_9949]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9949 + ceil32(return_data.size) + ceil32(32 * mem[_9949 + mem[_9949]]) + 1
                    mem[_9949 + ceil32(return_data.size)] = _10038
                    require (32 * _10038) + _10014 + 32 <= return_data.size
                    s = _9949 + ceil32(return_data.size) + 32
                    idx = _9949 + _10014 + 32
                    while idx < (32 * _10038) + _9949 + _10014 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _10038:
                        if idx >= mem[_9949 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13332 = mem[(32 * idx) + _9949 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13332))
                        call address(_13332).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13558 = mem[_13510]
                    require mem[_13510] == mem[_13510 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13558))
                    staticcall address(_13558).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13702] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
    else:
        mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(controllerAddress)
            call controllerAddress.0x67a52793 with:
                 gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(isActive):
                revert with 0, 'deposit-token-is-inactive'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3042 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] <= test266151307()
                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 324 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                _3067 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]
                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = _3067
                require (32 * _3067) + _3042 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                idx = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3042 + 325
                while idx < (32 * _3067) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3042 + 325:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3067:
                    if idx >= mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 50
                    _9034 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(_9034))
                    call address(_9034).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not arg2:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9167 = mem[_9135]
                require mem[_9135] == mem[_9135 + 12 len 20]
                if totalSupply > !0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9167))
                staticcall address(_9167).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9263] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
            else:
                _3112 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] <= test266151307()
                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 324 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                _3125 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]
                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = _3125
                require (32 * _3125) + _3112 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                idx = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3112 + 325
                while idx < (32 * _3125) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3112 + 325:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3125:
                    if idx >= mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 50
                    _9040 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    require ext_code.size(address(_9040))
                    call address(_9040).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not address(ext_call.return_data[0]):
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9168 = mem[_9136]
                require mem[_9136] == mem[_9136 + 12 len 20]
                if totalSupply > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9168))
                staticcall address(_9168).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9264] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                sub_f46c3c51[address(ext_call.return_data[0])] = block.timestamp
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, 0, address(ext_call.return_data[0])
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 52
                if balanceOf[address(ext_call.return_data[0])] < 0:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])]:
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9795 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9879 = mem[_9795]
                    require mem[_9795] <= test266151307()
                    require _9795 + mem[_9795] + 31 < _9795 + return_data.size
                    _9957 = mem[_9795 + mem[_9795]]
                    if mem[_9795 + mem[_9795]] > test266151307():
                        revert with 0, 65
                    if _9795 + ceil32(return_data.size) + ceil32(32 * mem[_9795 + mem[_9795]]) + 1 > test266151307() or ceil32(32 * mem[_9795 + mem[_9795]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9795 + ceil32(return_data.size) + ceil32(32 * mem[_9795 + mem[_9795]]) + 1
                    mem[_9795 + ceil32(return_data.size)] = _9957
                    require (32 * _9957) + _9879 + 32 <= return_data.size
                    s = _9795 + ceil32(return_data.size) + 32
                    idx = _9795 + _9879 + 32
                    while idx < (32 * _9957) + _9795 + _9879 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _9957:
                        if idx >= mem[_9795 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13362 = mem[(32 * idx) + _9795 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13362))
                        call address(_13362).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13563 = mem[_13515]
                    require mem[_13515] == mem[_13515 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13563))
                    staticcall address(_13563).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13707] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
                else:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x3f5fc131 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9958 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10017 = mem[_9958]
                    require mem[_9958] <= test266151307()
                    require _9958 + mem[_9958] + 31 < _9958 + return_data.size
                    _10041 = mem[_9958 + mem[_9958]]
                    if mem[_9958 + mem[_9958]] > test266151307():
                        revert with 0, 65
                    if _9958 + ceil32(return_data.size) + ceil32(32 * mem[_9958 + mem[_9958]]) + 1 > test266151307() or ceil32(32 * mem[_9958 + mem[_9958]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9958 + ceil32(return_data.size) + ceil32(32 * mem[_9958 + mem[_9958]]) + 1
                    mem[_9958 + ceil32(return_data.size)] = _10041
                    require (32 * _10041) + _10017 + 32 <= return_data.size
                    s = _9958 + ceil32(return_data.size) + 32
                    idx = _9958 + _10017 + 32
                    while idx < (32 * _10041) + _9958 + _10017 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _10041:
                        if idx >= mem[_9958 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13368 = mem[(32 * idx) + _9958 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13368))
                        call address(_13368).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13564 = mem[_13516]
                    require mem[_13516] == mem[_13516 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13564))
                    staticcall address(_13564).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13708] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
        else:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(controllerAddress)
            call controllerAddress.0x67a52793 with:
                 gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(isActive):
                revert with 0, 'deposit-token-is-inactive'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x3605b51b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3126 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] <= test266151307()
                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 324 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                _3171 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]
                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = _3171
                require (32 * _3171) + _3126 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                idx = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3126 + 325
                while idx < (32 * _3171) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3126 + 325:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3171:
                    if idx >= mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 50
                    _9058 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(_9058))
                    call address(_9058).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not arg2:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9171 = mem[_9139]
                require mem[_9139] == mem[_9139 + 12 len 20]
                if totalSupply > !0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9171))
                staticcall address(_9171).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9267] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
            else:
                _3230 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] <= test266151307()
                require (8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 324 < (8 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                _3266 = mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]
                if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] + 293]) + 294
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = _3266
                require (32 * _3266) + _3230 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                idx = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3230 + 325
                while idx < (32 * _3266) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + _3230 + 325:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _3266:
                    if idx >= mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 50
                    _9064 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    require ext_code.size(address(_9064))
                    call address(_9064).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not address(ext_call.return_data[0]):
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9172 = mem[_9140]
                require mem[_9140] == mem[_9140 + 12 len 20]
                if totalSupply > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = totalSupply
                require ext_code.size(address(_9172))
                staticcall address(_9172).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_9268] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                sub_f46c3c51[address(ext_call.return_data[0])] = block.timestamp
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, 0, address(ext_call.return_data[0])
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 52
                if balanceOf[address(ext_call.return_data[0])] < 0:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])]:
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9801 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9891 = mem[_9801]
                    require mem[_9801] <= test266151307()
                    require _9801 + mem[_9801] + 31 < _9801 + return_data.size
                    _9966 = mem[_9801 + mem[_9801]]
                    if mem[_9801 + mem[_9801]] > test266151307():
                        revert with 0, 65
                    if _9801 + ceil32(return_data.size) + ceil32(32 * mem[_9801 + mem[_9801]]) + 1 > test266151307() or ceil32(32 * mem[_9801 + mem[_9801]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9801 + ceil32(return_data.size) + ceil32(32 * mem[_9801 + mem[_9801]]) + 1
                    mem[_9801 + ceil32(return_data.size)] = _9966
                    require (32 * _9966) + _9891 + 32 <= return_data.size
                    s = _9801 + ceil32(return_data.size) + 32
                    idx = _9801 + _9891 + 32
                    while idx < (32 * _9966) + _9801 + _9891 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _9966:
                        if idx >= mem[_9801 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13398 = mem[(32 * idx) + _9801 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13398))
                        call address(_13398).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13569 = mem[_13521]
                    require mem[_13521] == mem[_13521 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13569))
                    staticcall address(_13569).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13713] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
                else:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x3f5fc131 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(isActive):
                        revert with 0, 'deposit-token-is-inactive'
                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9967 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10020 = mem[_9967]
                    require mem[_9967] <= test266151307()
                    require _9967 + mem[_9967] + 31 < _9967 + return_data.size
                    _10044 = mem[_9967 + mem[_9967]]
                    if mem[_9967 + mem[_9967]] > test266151307():
                        revert with 0, 65
                    if _9967 + ceil32(return_data.size) + ceil32(32 * mem[_9967 + mem[_9967]]) + 1 > test266151307() or ceil32(32 * mem[_9967 + mem[_9967]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _9967 + ceil32(return_data.size) + ceil32(32 * mem[_9967 + mem[_9967]]) + 1
                    mem[_9967 + ceil32(return_data.size)] = _10044
                    require (32 * _10044) + _10020 + 32 <= return_data.size
                    s = _9967 + ceil32(return_data.size) + 32
                    idx = _9967 + _10020 + 32
                    while idx < (32 * _10044) + _9967 + _10020 + 32:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _10044:
                        if idx >= mem[_9967 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _13404 = mem[(32 * idx) + _9967 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(_13404))
                        call address(_13404).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not arg2:
                        revert with 0, 'mint-to-the-zero-address'
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13570 = mem[_13522]
                    require mem[_13522] == mem[_13522 + 12 len 20]
                    if totalSupply > !0:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = totalSupply
                    require ext_code.size(address(_13570))
                    staticcall address(_13570).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), totalSupply
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_13714] > sub_4dac5650:
                        revert with 0, 'surpass-max-total-supply'
    sub_f46c3c51[address(arg2)] = block.timestamp
    if totalSupply > !0:
        revert with 0, 17
    if balanceOf[address(arg2)] > !0:
        revert with 0, 17
    emit 0xfeddf252: 0, 0, arg2
    if balanceOf[address(arg2)] < 0:
        revert with 0, 17
    if not balanceOf[address(arg2)]:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3f5fc131 with:
             gas gas_remaining wei
            args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x95d16db8: 0, msg.sender, arg2
    stor1 = 1
}



}
