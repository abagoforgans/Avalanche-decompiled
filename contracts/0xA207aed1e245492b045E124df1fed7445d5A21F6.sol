contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
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

function withdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(controllerAddress)
    call controllerAddress.0xecf3a3f9 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'not-shutdown'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
    staticcall controllerAddress.0xdde3ab95 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[128] <= 0:
        if arg1 > 0:
            revert with 0, 'amount-gt-unlocked'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x61d027b3 with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(controllerAddress)
        call controllerAddress.0xe941fa78 with:
             gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xdde3ab95 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(7 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[128] <= 0:
                if 0 < arg1:
                    revert with 0, 'not-enough-free-balance'
                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                    revert with 0, 17
                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                    revert with 0, 'min-deposit-time-have-not-passed'
                mem[(8 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x3605b51b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _111 = mem[(8 * ceil32(return_data.size)) + 96]
                require mem[(8 * ceil32(return_data.size)) + 96] <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 127 < (8 * ceil32(return_data.size)) + return_data.size + 96
                _121 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 96]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 96]) + 97
                mem[(10 * ceil32(return_data.size)) + 96] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96] + 96]
                require (32 * _121) + _111 + 32 <= return_data.size
                s = (10 * ceil32(return_data.size)) + 128
                idx = (8 * ceil32(return_data.size)) + _111 + 128
                while idx < (32 * _121) + (8 * ceil32(return_data.size)) + _111 + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _121:
                    if idx >= mem[(10 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    _9293 = mem[(32 * idx) + (10 * ceil32(return_data.size)) + 128]
                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(_9293))
                    call address(_9293).0x1b30f0c0 with:
                         gas gas_remaining wei
                        args this.address, msg.sender
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
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(10 * ceil32(return_data.size)) + 100] = this.address
                mem[(10 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x57f1915d with:
                        gas gas_remaining wei
                       args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 'not-enough-free-balance'
                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                        revert with 0, 17
                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                        revert with 0, 'min-deposit-time-have-not-passed'
                    mem[(11 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _391 = mem[(11 * ceil32(return_data.size)) + 96]
                    require mem[(11 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                    _429 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _429) + _391 + 32 <= return_data.size
                    s = (12 * ceil32(return_data.size)) + 128
                    idx = (11 * ceil32(return_data.size)) + _391 + 128
                    while idx < (32 * _429) + (11 * ceil32(return_data.size)) + _391 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _429:
                        if idx >= mem[(12 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9298 = mem[(32 * idx) + (12 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(_9298))
                        call address(_9298).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if ext_call.return_data[0] < arg1:
                        revert with 0, 'not-enough-free-balance'
                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                        revert with 0, 17
                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                        revert with 0, 'min-deposit-time-have-not-passed'
                    mem[(11 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _417 = mem[(11 * ceil32(return_data.size)) + 96]
                    require mem[(11 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                    _442 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _442) + _417 + 32 <= return_data.size
                    s = (12 * ceil32(return_data.size)) + 128
                    idx = (11 * ceil32(return_data.size)) + _417 + 128
                    while idx < (32 * _442) + (11 * ceil32(return_data.size)) + _417 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _442:
                        if idx >= mem[(12 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9303 = mem[(32 * idx) + (12 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(_9303))
                        call address(_9303).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            if not msg.sender:
                revert with 0, 'burn-from-the-zero-address'
            if balanceOf[address(msg.sender)] < arg1:
                revert with 0, 'burn-amount-exceeds-balance'
            balanceOf[address(msg.sender)] -= arg1
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            emit 0xfeddf252: arg1, msg.sender, 0
            if not balanceOf[address(msg.sender)]:
                require ext_code.size(controllerAddress)
                call controllerAddress.0x275038d0 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xf2d5d56b with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x4700a5c5: arg1, 0, msg.sender, arg2
        else:
            if not arg1:
                mem[(7 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x3605b51b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _52 = mem[(7 * ceil32(return_data.size)) + 96]
                require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _59 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                    revert with 0, 65
                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
                require (32 * _59) + _52 + 32 <= return_data.size
                s = (8 * ceil32(return_data.size)) + 128
                idx = (7 * ceil32(return_data.size)) + _52 + 128
                while idx < (32 * _59) + (7 * ceil32(return_data.size)) + _52 + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < _59:
                    if idx >= mem[(8 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    _9307 = mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128]
                    mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(ext_call.return_data[0])
                    require ext_code.size(address(_9307))
                    call address(_9307).0xb17b23a0 with:
                         gas gas_remaining wei
                        args this.address, msg.sender, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'transfer-from-the-zero-address'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'transfer-to-the-zero-address'
                if balanceOf[address(msg.sender)] < 0:
                    revert with 0, 'transfer-amount-exceeds-balance'
                if balanceOf[address(ext_call.return_data[0])] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                if balanceOf[address(ext_call.return_data[0])] < 0:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])]:
                    mem[0] = msg.sender
                    mem[32] = 52
                    if balanceOf[address(msg.sender)]:
                        if arg1 < 0:
                            revert with 0, 17
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xdde3ab95 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 160
                        require mem[_9750] == bool(mem[_9750])
                        _9834 = mem[_9750 + 128]
                        if mem[_9750 + 128] <= 0:
                            if 0 < arg1:
                                revert with 0, 'not-enough-free-balance'
                            mem[0] = msg.sender
                            mem[32] = 62
                            if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                revert with 0, 17
                            if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                revert with 0, 'min-deposit-time-have-not-passed'
                            mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0x3605b51b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10137 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10182 = mem[_10137]
                            require mem[_10137] <= test266151307()
                            require _10137 + mem[_10137] + 31 < _10137 + return_data.size
                            _10254 = mem[_10137 + mem[_10137]]
                            if mem[_10137 + mem[_10137]] > test266151307():
                                revert with 0, 65
                            if _10137 + ceil32(return_data.size) + ceil32(32 * mem[_10137 + mem[_10137]]) + 1 > test266151307() or ceil32(32 * mem[_10137 + mem[_10137]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10137 + ceil32(return_data.size) + ceil32(32 * mem[_10137 + mem[_10137]]) + 1
                            mem[_10137 + ceil32(return_data.size)] = _10254
                            require (32 * _10254) + _10182 + 32 <= return_data.size
                            s = _10137 + ceil32(return_data.size) + 32
                            idx = _10137 + _10182 + 32
                            while idx < (32 * _10254) + _10137 + _10182 + 32:
                                require mem[idx] == mem[idx + 12 len 20]
                                mem[s] = mem[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            idx = 0
                            while idx < _10254:
                                if idx >= mem[_10137 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _17582 = mem[(32 * idx) + _10137 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_17582))
                                call address(_17582).0x1b30f0c0 with:
                                     gas gas_remaining wei
                                    args this.address, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if mem[_9750 + 128] and 10^18 > -1 / mem[_9750 + 128]:
                                revert with 0, 17
                            if 10^18 * mem[_9750 + 128] > !uint255(stor60.field_1):
                                revert with 0, 17
                            if not collateralizationRatio:
                                revert with 0, 18
                            mem[0] = msg.sender
                            mem[32] = 52
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xeaada382 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10407 = mem[_10362]
                            require mem[_10362] == mem[_10362 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^18 * _9834) + uint255(stor60.field_1) / collateralizationRatio
                            require ext_code.size(address(_10407))
                            staticcall address(_10407).0x57f1915d with:
                                    gas gas_remaining wei
                                   args address(this.address), (10^18 * _9834) + uint255(stor60.field_1) / collateralizationRatio
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10772 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if balanceOf[address(msg.sender)] < mem[_10772]:
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11829 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11973 = mem[_11829]
                                require mem[_11829] <= test266151307()
                                require _11829 + mem[_11829] + 31 < _11829 + return_data.size
                                _12135 = mem[_11829 + mem[_11829]]
                                if mem[_11829 + mem[_11829]] > test266151307():
                                    revert with 0, 65
                                if _11829 + ceil32(return_data.size) + ceil32(32 * mem[_11829 + mem[_11829]]) + 1 > test266151307() or ceil32(32 * mem[_11829 + mem[_11829]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _11829 + ceil32(return_data.size) + ceil32(32 * mem[_11829 + mem[_11829]]) + 1
                                mem[_11829 + ceil32(return_data.size)] = _12135
                                require (32 * _12135) + _11973 + 32 <= return_data.size
                                s = _11829 + ceil32(return_data.size) + 32
                                idx = _11829 + _11973 + 32
                                while idx < (32 * _12135) + _11829 + _11973 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12135:
                                    if idx >= mem[_11829 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17587 = mem[(32 * idx) + _11829 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17587))
                                    call address(_17587).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_10772] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11865 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12054 = mem[_11865]
                                require mem[_11865] <= test266151307()
                                require _11865 + mem[_11865] + 31 < _11865 + return_data.size
                                _12190 = mem[_11865 + mem[_11865]]
                                if mem[_11865 + mem[_11865]] > test266151307():
                                    revert with 0, 65
                                if _11865 + ceil32(return_data.size) + ceil32(32 * mem[_11865 + mem[_11865]]) + 1 > test266151307() or ceil32(32 * mem[_11865 + mem[_11865]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _11865 + ceil32(return_data.size) + ceil32(32 * mem[_11865 + mem[_11865]]) + 1
                                mem[_11865 + ceil32(return_data.size)] = _12190
                                require (32 * _12190) + _12054 + 32 <= return_data.size
                                s = _11865 + ceil32(return_data.size) + 32
                                idx = _11865 + _12054 + 32
                                while idx < (32 * _12190) + _11865 + _12054 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12190:
                                    if idx >= mem[_11865 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17592 = mem[(32 * idx) + _11865 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17592))
                                    call address(_17592).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    else:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x275038d0 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1 < 0:
                            revert with 0, 17
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xdde3ab95 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9804 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 160
                        require mem[_9804] == bool(mem[_9804])
                        _9908 = mem[_9804 + 128]
                        if mem[_9804 + 128] <= 0:
                            if 0 < arg1:
                                revert with 0, 'not-enough-free-balance'
                            mem[0] = msg.sender
                            mem[32] = 62
                            if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                revert with 0, 17
                            if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                revert with 0, 'min-deposit-time-have-not-passed'
                            mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0x3605b51b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10255 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10326 = mem[_10255]
                            require mem[_10255] <= test266151307()
                            require _10255 + mem[_10255] + 31 < _10255 + return_data.size
                            _10380 = mem[_10255 + mem[_10255]]
                            if mem[_10255 + mem[_10255]] > test266151307():
                                revert with 0, 65
                            if _10255 + ceil32(return_data.size) + ceil32(32 * mem[_10255 + mem[_10255]]) + 1 > test266151307() or ceil32(32 * mem[_10255 + mem[_10255]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10255 + ceil32(return_data.size) + ceil32(32 * mem[_10255 + mem[_10255]]) + 1
                            mem[_10255 + ceil32(return_data.size)] = _10380
                            require (32 * _10380) + _10326 + 32 <= return_data.size
                            s = _10255 + ceil32(return_data.size) + 32
                            idx = _10255 + _10326 + 32
                            while idx < (32 * _10380) + _10255 + _10326 + 32:
                                require mem[idx] == mem[idx + 12 len 20]
                                mem[s] = mem[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            idx = 0
                            while idx < _10380:
                                if idx >= mem[_10255 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _17597 = mem[(32 * idx) + _10255 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_17597))
                                call address(_17597).0x1b30f0c0 with:
                                     gas gas_remaining wei
                                    args this.address, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if mem[_9804 + 128] and 10^18 > -1 / mem[_9804 + 128]:
                                revert with 0, 17
                            if 10^18 * mem[_9804 + 128] > !uint255(stor60.field_1):
                                revert with 0, 17
                            if not collateralizationRatio:
                                revert with 0, 18
                            mem[0] = msg.sender
                            mem[32] = 52
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xeaada382 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10557 = mem[_10507]
                            require mem[_10507] == mem[_10507 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^18 * _9908) + uint255(stor60.field_1) / collateralizationRatio
                            require ext_code.size(address(_10557))
                            staticcall address(_10557).0x57f1915d with:
                                    gas gas_remaining wei
                                   args address(this.address), (10^18 * _9908) + uint255(stor60.field_1) / collateralizationRatio
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11079 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if balanceOf[address(msg.sender)] < mem[_11079]:
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12136 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12253 = mem[_12136]
                                require mem[_12136] <= test266151307()
                                require _12136 + mem[_12136] + 31 < _12136 + return_data.size
                                _12351 = mem[_12136 + mem[_12136]]
                                if mem[_12136 + mem[_12136]] > test266151307():
                                    revert with 0, 65
                                if _12136 + ceil32(return_data.size) + ceil32(32 * mem[_12136 + mem[_12136]]) + 1 > test266151307() or ceil32(32 * mem[_12136 + mem[_12136]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _12136 + ceil32(return_data.size) + ceil32(32 * mem[_12136 + mem[_12136]]) + 1
                                mem[_12136 + ceil32(return_data.size)] = _12351
                                require (32 * _12351) + _12253 + 32 <= return_data.size
                                s = _12136 + ceil32(return_data.size) + 32
                                idx = _12136 + _12253 + 32
                                while idx < (32 * _12351) + _12136 + _12253 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12351:
                                    if idx >= mem[_12136 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17602 = mem[(32 * idx) + _12136 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17602))
                                    call address(_17602).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_11079] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12191 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12306 = mem[_12191]
                                require mem[_12191] <= test266151307()
                                require _12191 + mem[_12191] + 31 < _12191 + return_data.size
                                _12388 = mem[_12191 + mem[_12191]]
                                if mem[_12191 + mem[_12191]] > test266151307():
                                    revert with 0, 65
                                if _12191 + ceil32(return_data.size) + ceil32(32 * mem[_12191 + mem[_12191]]) + 1 > test266151307() or ceil32(32 * mem[_12191 + mem[_12191]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _12191 + ceil32(return_data.size) + ceil32(32 * mem[_12191 + mem[_12191]]) + 1
                                mem[_12191 + ceil32(return_data.size)] = _12388
                                require (32 * _12388) + _12306 + 32 <= return_data.size
                                s = _12191 + ceil32(return_data.size) + 32
                                idx = _12191 + _12306 + 32
                                while idx < (32 * _12388) + _12191 + _12306 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12388:
                                    if idx >= mem[_12191 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17607 = mem[(32 * idx) + _12191 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17607))
                                    call address(_17607).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                else:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x3f5fc131 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = 52
                    if balanceOf[address(msg.sender)]:
                        if arg1 < 0:
                            revert with 0, 17
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xdde3ab95 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9805 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 160
                        require mem[_9805] == bool(mem[_9805])
                        _9912 = mem[_9805 + 128]
                        if mem[_9805 + 128] <= 0:
                            if 0 < arg1:
                                revert with 0, 'not-enough-free-balance'
                            mem[0] = msg.sender
                            mem[32] = 62
                            if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                revert with 0, 17
                            if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                revert with 0, 'min-deposit-time-have-not-passed'
                            mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0x3605b51b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10256 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10327 = mem[_10256]
                            require mem[_10256] <= test266151307()
                            require _10256 + mem[_10256] + 31 < _10256 + return_data.size
                            _10381 = mem[_10256 + mem[_10256]]
                            if mem[_10256 + mem[_10256]] > test266151307():
                                revert with 0, 65
                            if _10256 + ceil32(return_data.size) + ceil32(32 * mem[_10256 + mem[_10256]]) + 1 > test266151307() or ceil32(32 * mem[_10256 + mem[_10256]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10256 + ceil32(return_data.size) + ceil32(32 * mem[_10256 + mem[_10256]]) + 1
                            mem[_10256 + ceil32(return_data.size)] = _10381
                            require (32 * _10381) + _10327 + 32 <= return_data.size
                            s = _10256 + ceil32(return_data.size) + 32
                            idx = _10256 + _10327 + 32
                            while idx < (32 * _10381) + _10256 + _10327 + 32:
                                require mem[idx] == mem[idx + 12 len 20]
                                mem[s] = mem[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            idx = 0
                            while idx < _10381:
                                if idx >= mem[_10256 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _17612 = mem[(32 * idx) + _10256 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_17612))
                                call address(_17612).0x1b30f0c0 with:
                                     gas gas_remaining wei
                                    args this.address, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if mem[_9805 + 128] and 10^18 > -1 / mem[_9805 + 128]:
                                revert with 0, 17
                            if 10^18 * mem[_9805 + 128] > !uint255(stor60.field_1):
                                revert with 0, 17
                            if not collateralizationRatio:
                                revert with 0, 18
                            mem[0] = msg.sender
                            mem[32] = 52
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xeaada382 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10558 = mem[_10508]
                            require mem[_10508] == mem[_10508 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^18 * _9912) + uint255(stor60.field_1) / collateralizationRatio
                            require ext_code.size(address(_10558))
                            staticcall address(_10558).0x57f1915d with:
                                    gas gas_remaining wei
                                   args address(this.address), (10^18 * _9912) + uint255(stor60.field_1) / collateralizationRatio
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if balanceOf[address(msg.sender)] < mem[_11085]:
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12138 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12254 = mem[_12138]
                                require mem[_12138] <= test266151307()
                                require _12138 + mem[_12138] + 31 < _12138 + return_data.size
                                _12352 = mem[_12138 + mem[_12138]]
                                if mem[_12138 + mem[_12138]] > test266151307():
                                    revert with 0, 65
                                if _12138 + ceil32(return_data.size) + ceil32(32 * mem[_12138 + mem[_12138]]) + 1 > test266151307() or ceil32(32 * mem[_12138 + mem[_12138]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _12138 + ceil32(return_data.size) + ceil32(32 * mem[_12138 + mem[_12138]]) + 1
                                mem[_12138 + ceil32(return_data.size)] = _12352
                                require (32 * _12352) + _12254 + 32 <= return_data.size
                                s = _12138 + ceil32(return_data.size) + 32
                                idx = _12138 + _12254 + 32
                                while idx < (32 * _12352) + _12138 + _12254 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12352:
                                    if idx >= mem[_12138 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17617 = mem[(32 * idx) + _12138 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17617))
                                    call address(_17617).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_11085] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12192 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12307 = mem[_12192]
                                require mem[_12192] <= test266151307()
                                require _12192 + mem[_12192] + 31 < _12192 + return_data.size
                                _12390 = mem[_12192 + mem[_12192]]
                                if mem[_12192 + mem[_12192]] > test266151307():
                                    revert with 0, 65
                                if _12192 + ceil32(return_data.size) + ceil32(32 * mem[_12192 + mem[_12192]]) + 1 > test266151307() or ceil32(32 * mem[_12192 + mem[_12192]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _12192 + ceil32(return_data.size) + ceil32(32 * mem[_12192 + mem[_12192]]) + 1
                                mem[_12192 + ceil32(return_data.size)] = _12390
                                require (32 * _12390) + _12307 + 32 <= return_data.size
                                s = _12192 + ceil32(return_data.size) + 32
                                idx = _12192 + _12307 + 32
                                while idx < (32 * _12390) + _12192 + _12307 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12390:
                                    if idx >= mem[_12192 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17622 = mem[(32 * idx) + _12192 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17622))
                                    call address(_17622).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    else:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x275038d0 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1 < 0:
                            revert with 0, 17
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xdde3ab95 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 160
                        require mem[_9894] == bool(mem[_9894])
                        _10019 = mem[_9894 + 128]
                        if mem[_9894 + 128] <= 0:
                            if 0 < arg1:
                                revert with 0, 'not-enough-free-balance'
                            mem[0] = msg.sender
                            mem[32] = 62
                            if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                revert with 0, 17
                            if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                revert with 0, 'min-deposit-time-have-not-passed'
                            mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0x3605b51b with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10382 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10489 = mem[_10382]
                            require mem[_10382] <= test266151307()
                            require _10382 + mem[_10382] + 31 < _10382 + return_data.size
                            _10534 = mem[_10382 + mem[_10382]]
                            if mem[_10382 + mem[_10382]] > test266151307():
                                revert with 0, 65
                            if _10382 + ceil32(return_data.size) + ceil32(32 * mem[_10382 + mem[_10382]]) + 1 > test266151307() or ceil32(32 * mem[_10382 + mem[_10382]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _10382 + ceil32(return_data.size) + ceil32(32 * mem[_10382 + mem[_10382]]) + 1
                            mem[_10382 + ceil32(return_data.size)] = _10534
                            require (32 * _10534) + _10489 + 32 <= return_data.size
                            s = _10382 + ceil32(return_data.size) + 32
                            idx = _10382 + _10489 + 32
                            while idx < (32 * _10534) + _10382 + _10489 + 32:
                                require mem[idx] == mem[idx + 12 len 20]
                                mem[s] = mem[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            idx = 0
                            while idx < _10534:
                                if idx >= mem[_10382 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _17627 = mem[(32 * idx) + _10382 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(_17627))
                                call address(_17627).0x1b30f0c0 with:
                                     gas gas_remaining wei
                                    args this.address, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if mem[_9894 + 128] and 10^18 > -1 / mem[_9894 + 128]:
                                revert with 0, 17
                            if 10^18 * mem[_9894 + 128] > !uint255(stor60.field_1):
                                revert with 0, 17
                            if not collateralizationRatio:
                                revert with 0, 18
                            mem[0] = msg.sender
                            mem[32] = 52
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xeaada382 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10785 = mem[_10708]
                            require mem[_10708] == mem[_10708 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^18 * _10019) + uint255(stor60.field_1) / collateralizationRatio
                            require ext_code.size(address(_10785))
                            staticcall address(_10785).0x57f1915d with:
                                    gas gas_remaining wei
                                   args address(this.address), (10^18 * _10019) + uint255(stor60.field_1) / collateralizationRatio
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if balanceOf[address(msg.sender)] < mem[_11350]:
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12353 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12435 = mem[_12353]
                                require mem[_12353] <= test266151307()
                                require _12353 + mem[_12353] + 31 < _12353 + return_data.size
                                _12497 = mem[_12353 + mem[_12353]]
                                if mem[_12353 + mem[_12353]] > test266151307():
                                    revert with 0, 65
                                if _12353 + ceil32(return_data.size) + ceil32(32 * mem[_12353 + mem[_12353]]) + 1 > test266151307() or ceil32(32 * mem[_12353 + mem[_12353]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _12353 + ceil32(return_data.size) + ceil32(32 * mem[_12353 + mem[_12353]]) + 1
                                mem[_12353 + ceil32(return_data.size)] = _12497
                                require (32 * _12497) + _12435 + 32 <= return_data.size
                                s = _12353 + ceil32(return_data.size) + 32
                                idx = _12353 + _12435 + 32
                                while idx < (32 * _12497) + _12353 + _12435 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12497:
                                    if idx >= mem[_12353 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17632 = mem[(32 * idx) + _12353 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17632))
                                    call address(_17632).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_11350] < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12391 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12470 = mem[_12391]
                                require mem[_12391] <= test266151307()
                                require _12391 + mem[_12391] + 31 < _12391 + return_data.size
                                _12529 = mem[_12391 + mem[_12391]]
                                if mem[_12391 + mem[_12391]] > test266151307():
                                    revert with 0, 65
                                if _12391 + ceil32(return_data.size) + ceil32(32 * mem[_12391 + mem[_12391]]) + 1 > test266151307() or ceil32(32 * mem[_12391 + mem[_12391]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _12391 + ceil32(return_data.size) + ceil32(32 * mem[_12391 + mem[_12391]]) + 1
                                mem[_12391 + ceil32(return_data.size)] = _12529
                                require (32 * _12529) + _12470 + 32 <= return_data.size
                                s = _12391 + ceil32(return_data.size) + 32
                                idx = _12391 + _12470 + 32
                                while idx < (32 * _12529) + _12391 + _12470 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _12529:
                                    if idx >= mem[_12391 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17637 = mem[(32 * idx) + _12391 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17637))
                                    call address(_17637).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                if not msg.sender:
                    revert with 0, 'burn-from-the-zero-address'
                if balanceOf[address(msg.sender)] < arg1:
                    revert with 0, 'burn-amount-exceeds-balance'
                balanceOf[address(msg.sender)] -= arg1
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                emit 0xfeddf252: arg1, msg.sender, 0
                if not balanceOf[address(msg.sender)]:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x275038d0 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xf2d5d56b with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x4700a5c5: arg1, 0, msg.sender, arg2
            else:
                if not ext_call.return_data[0]:
                    mem[(7 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _58 = mem[(7 * ceil32(return_data.size)) + 96]
                    require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                    _62 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _62) + _58 + 32 <= return_data.size
                    s = (8 * ceil32(return_data.size)) + 128
                    idx = (7 * ceil32(return_data.size)) + _58 + 128
                    while idx < (32 * _62) + (7 * ceil32(return_data.size)) + _58 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _62:
                        if idx >= mem[(8 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9315 = mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(ext_call.return_data[0])
                        require ext_code.size(address(_9315))
                        call address(_9315).0xb17b23a0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not msg.sender:
                        revert with 0, 'transfer-from-the-zero-address'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'transfer-to-the-zero-address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'transfer-amount-exceeds-balance'
                    if balanceOf[address(ext_call.return_data[0])] > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                    if balanceOf[address(ext_call.return_data[0])] < 0:
                        revert with 0, 17
                    if balanceOf[address(ext_call.return_data[0])]:
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9756] == bool(mem[_9756])
                            _9842 = mem[_9756 + 128]
                            if mem[_9756 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10139 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10192 = mem[_10139]
                                require mem[_10139] <= test266151307()
                                require _10139 + mem[_10139] + 31 < _10139 + return_data.size
                                _10260 = mem[_10139 + mem[_10139]]
                                if mem[_10139 + mem[_10139]] > test266151307():
                                    revert with 0, 65
                                if _10139 + ceil32(return_data.size) + ceil32(32 * mem[_10139 + mem[_10139]]) + 1 > test266151307() or ceil32(32 * mem[_10139 + mem[_10139]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10139 + ceil32(return_data.size) + ceil32(32 * mem[_10139 + mem[_10139]]) + 1
                                mem[_10139 + ceil32(return_data.size)] = _10260
                                require (32 * _10260) + _10192 + 32 <= return_data.size
                                s = _10139 + ceil32(return_data.size) + 32
                                idx = _10139 + _10192 + 32
                                while idx < (32 * _10260) + _10139 + _10192 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10260:
                                    if idx >= mem[_10139 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17702 = mem[(32 * idx) + _10139 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17702))
                                    call address(_17702).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9756 + 128] and 10^18 > -1 / mem[_9756 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9756 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10425 = mem[_10366]
                                require mem[_10366] == mem[_10366 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9842) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10425))
                                staticcall address(_10425).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9842) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10810 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_10810]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11837 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _11991 = mem[_11837]
                                    require mem[_11837] <= test266151307()
                                    require _11837 + mem[_11837] + 31 < _11837 + return_data.size
                                    _12147 = mem[_11837 + mem[_11837]]
                                    if mem[_11837 + mem[_11837]] > test266151307():
                                        revert with 0, 65
                                    if _11837 + ceil32(return_data.size) + ceil32(32 * mem[_11837 + mem[_11837]]) + 1 > test266151307() or ceil32(32 * mem[_11837 + mem[_11837]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11837 + ceil32(return_data.size) + ceil32(32 * mem[_11837 + mem[_11837]]) + 1
                                    mem[_11837 + ceil32(return_data.size)] = _12147
                                    require (32 * _12147) + _11991 + 32 <= return_data.size
                                    s = _11837 + ceil32(return_data.size) + 32
                                    idx = _11837 + _11991 + 32
                                    while idx < (32 * _12147) + _11837 + _11991 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12147:
                                        if idx >= mem[_11837 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17707 = mem[(32 * idx) + _11837 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17707))
                                        call address(_17707).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_10810] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11889 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12072 = mem[_11889]
                                    require mem[_11889] <= test266151307()
                                    require _11889 + mem[_11889] + 31 < _11889 + return_data.size
                                    _12204 = mem[_11889 + mem[_11889]]
                                    if mem[_11889 + mem[_11889]] > test266151307():
                                        revert with 0, 65
                                    if _11889 + ceil32(return_data.size) + ceil32(32 * mem[_11889 + mem[_11889]]) + 1 > test266151307() or ceil32(32 * mem[_11889 + mem[_11889]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11889 + ceil32(return_data.size) + ceil32(32 * mem[_11889 + mem[_11889]]) + 1
                                    mem[_11889 + ceil32(return_data.size)] = _12204
                                    require (32 * _12204) + _12072 + 32 <= return_data.size
                                    s = _11889 + ceil32(return_data.size) + 32
                                    idx = _11889 + _12072 + 32
                                    while idx < (32 * _12204) + _11889 + _12072 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12204:
                                        if idx >= mem[_11889 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17712 = mem[(32 * idx) + _11889 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17712))
                                        call address(_17712).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9810 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9810] == bool(mem[_9810])
                            _9928 = mem[_9810 + 128]
                            if mem[_9810 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10261 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10334 = mem[_10261]
                                require mem[_10261] <= test266151307()
                                require _10261 + mem[_10261] + 31 < _10261 + return_data.size
                                _10386 = mem[_10261 + mem[_10261]]
                                if mem[_10261 + mem[_10261]] > test266151307():
                                    revert with 0, 65
                                if _10261 + ceil32(return_data.size) + ceil32(32 * mem[_10261 + mem[_10261]]) + 1 > test266151307() or ceil32(32 * mem[_10261 + mem[_10261]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10261 + ceil32(return_data.size) + ceil32(32 * mem[_10261 + mem[_10261]]) + 1
                                mem[_10261 + ceil32(return_data.size)] = _10386
                                require (32 * _10386) + _10334 + 32 <= return_data.size
                                s = _10261 + ceil32(return_data.size) + 32
                                idx = _10261 + _10334 + 32
                                while idx < (32 * _10386) + _10261 + _10334 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10386:
                                    if idx >= mem[_10261 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17717 = mem[(32 * idx) + _10261 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17717))
                                    call address(_17717).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9810 + 128] and 10^18 > -1 / mem[_9810 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9810 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10513 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10581 = mem[_10513]
                                require mem[_10513] == mem[_10513 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9928) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10581))
                                staticcall address(_10581).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9928) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11117 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11117]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12148 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12265 = mem[_12148]
                                    require mem[_12148] <= test266151307()
                                    require _12148 + mem[_12148] + 31 < _12148 + return_data.size
                                    _12359 = mem[_12148 + mem[_12148]]
                                    if mem[_12148 + mem[_12148]] > test266151307():
                                        revert with 0, 65
                                    if _12148 + ceil32(return_data.size) + ceil32(32 * mem[_12148 + mem[_12148]]) + 1 > test266151307() or ceil32(32 * mem[_12148 + mem[_12148]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12148 + ceil32(return_data.size) + ceil32(32 * mem[_12148 + mem[_12148]]) + 1
                                    mem[_12148 + ceil32(return_data.size)] = _12359
                                    require (32 * _12359) + _12265 + 32 <= return_data.size
                                    s = _12148 + ceil32(return_data.size) + 32
                                    idx = _12148 + _12265 + 32
                                    while idx < (32 * _12359) + _12148 + _12265 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12359:
                                        if idx >= mem[_12148 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17722 = mem[(32 * idx) + _12148 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17722))
                                        call address(_17722).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11117] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12205 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12316 = mem[_12205]
                                    require mem[_12205] <= test266151307()
                                    require _12205 + mem[_12205] + 31 < _12205 + return_data.size
                                    _12398 = mem[_12205 + mem[_12205]]
                                    if mem[_12205 + mem[_12205]] > test266151307():
                                        revert with 0, 65
                                    if _12205 + ceil32(return_data.size) + ceil32(32 * mem[_12205 + mem[_12205]]) + 1 > test266151307() or ceil32(32 * mem[_12205 + mem[_12205]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12205 + ceil32(return_data.size) + ceil32(32 * mem[_12205 + mem[_12205]]) + 1
                                    mem[_12205 + ceil32(return_data.size)] = _12398
                                    require (32 * _12398) + _12316 + 32 <= return_data.size
                                    s = _12205 + ceil32(return_data.size) + 32
                                    idx = _12205 + _12316 + 32
                                    while idx < (32 * _12398) + _12205 + _12316 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12398:
                                        if idx >= mem[_12205 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17727 = mem[(32 * idx) + _12205 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17727))
                                        call address(_17727).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    else:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x3f5fc131 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9811] == bool(mem[_9811])
                            _9932 = mem[_9811 + 128]
                            if mem[_9811 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10262 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10335 = mem[_10262]
                                require mem[_10262] <= test266151307()
                                require _10262 + mem[_10262] + 31 < _10262 + return_data.size
                                _10387 = mem[_10262 + mem[_10262]]
                                if mem[_10262 + mem[_10262]] > test266151307():
                                    revert with 0, 65
                                if _10262 + ceil32(return_data.size) + ceil32(32 * mem[_10262 + mem[_10262]]) + 1 > test266151307() or ceil32(32 * mem[_10262 + mem[_10262]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10262 + ceil32(return_data.size) + ceil32(32 * mem[_10262 + mem[_10262]]) + 1
                                mem[_10262 + ceil32(return_data.size)] = _10387
                                require (32 * _10387) + _10335 + 32 <= return_data.size
                                s = _10262 + ceil32(return_data.size) + 32
                                idx = _10262 + _10335 + 32
                                while idx < (32 * _10387) + _10262 + _10335 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10387:
                                    if idx >= mem[_10262 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17732 = mem[(32 * idx) + _10262 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17732))
                                    call address(_17732).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9811 + 128] and 10^18 > -1 / mem[_9811 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9811 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10514 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10582 = mem[_10514]
                                require mem[_10514] == mem[_10514 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9932) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10582))
                                staticcall address(_10582).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9932) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11123 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11123]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12150 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12266 = mem[_12150]
                                    require mem[_12150] <= test266151307()
                                    require _12150 + mem[_12150] + 31 < _12150 + return_data.size
                                    _12360 = mem[_12150 + mem[_12150]]
                                    if mem[_12150 + mem[_12150]] > test266151307():
                                        revert with 0, 65
                                    if _12150 + ceil32(return_data.size) + ceil32(32 * mem[_12150 + mem[_12150]]) + 1 > test266151307() or ceil32(32 * mem[_12150 + mem[_12150]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12150 + ceil32(return_data.size) + ceil32(32 * mem[_12150 + mem[_12150]]) + 1
                                    mem[_12150 + ceil32(return_data.size)] = _12360
                                    require (32 * _12360) + _12266 + 32 <= return_data.size
                                    s = _12150 + ceil32(return_data.size) + 32
                                    idx = _12150 + _12266 + 32
                                    while idx < (32 * _12360) + _12150 + _12266 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12360:
                                        if idx >= mem[_12150 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17737 = mem[(32 * idx) + _12150 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17737))
                                        call address(_17737).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11123] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12206 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12317 = mem[_12206]
                                    require mem[_12206] <= test266151307()
                                    require _12206 + mem[_12206] + 31 < _12206 + return_data.size
                                    _12400 = mem[_12206 + mem[_12206]]
                                    if mem[_12206 + mem[_12206]] > test266151307():
                                        revert with 0, 65
                                    if _12206 + ceil32(return_data.size) + ceil32(32 * mem[_12206 + mem[_12206]]) + 1 > test266151307() or ceil32(32 * mem[_12206 + mem[_12206]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12206 + ceil32(return_data.size) + ceil32(32 * mem[_12206 + mem[_12206]]) + 1
                                    mem[_12206 + ceil32(return_data.size)] = _12400
                                    require (32 * _12400) + _12317 + 32 <= return_data.size
                                    s = _12206 + ceil32(return_data.size) + 32
                                    idx = _12206 + _12317 + 32
                                    while idx < (32 * _12400) + _12206 + _12317 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12400:
                                        if idx >= mem[_12206 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17742 = mem[(32 * idx) + _12206 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17742))
                                        call address(_17742).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9896 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9896] == bool(mem[_9896])
                            _10037 = mem[_9896 + 128]
                            if mem[_9896 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10388 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10493 = mem[_10388]
                                require mem[_10388] <= test266151307()
                                require _10388 + mem[_10388] + 31 < _10388 + return_data.size
                                _10538 = mem[_10388 + mem[_10388]]
                                if mem[_10388 + mem[_10388]] > test266151307():
                                    revert with 0, 65
                                if _10388 + ceil32(return_data.size) + ceil32(32 * mem[_10388 + mem[_10388]]) + 1 > test266151307() or ceil32(32 * mem[_10388 + mem[_10388]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10388 + ceil32(return_data.size) + ceil32(32 * mem[_10388 + mem[_10388]]) + 1
                                mem[_10388 + ceil32(return_data.size)] = _10538
                                require (32 * _10538) + _10493 + 32 <= return_data.size
                                s = _10388 + ceil32(return_data.size) + 32
                                idx = _10388 + _10493 + 32
                                while idx < (32 * _10538) + _10388 + _10493 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10538:
                                    if idx >= mem[_10388 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17747 = mem[(32 * idx) + _10388 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17747))
                                    call address(_17747).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9896 + 128] and 10^18 > -1 / mem[_9896 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9896 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10823 = mem[_10718]
                                require mem[_10718] == mem[_10718 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _10037) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10823))
                                staticcall address(_10823).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _10037) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11366]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12361 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12443 = mem[_12361]
                                    require mem[_12361] <= test266151307()
                                    require _12361 + mem[_12361] + 31 < _12361 + return_data.size
                                    _12503 = mem[_12361 + mem[_12361]]
                                    if mem[_12361 + mem[_12361]] > test266151307():
                                        revert with 0, 65
                                    if _12361 + ceil32(return_data.size) + ceil32(32 * mem[_12361 + mem[_12361]]) + 1 > test266151307() or ceil32(32 * mem[_12361 + mem[_12361]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12361 + ceil32(return_data.size) + ceil32(32 * mem[_12361 + mem[_12361]]) + 1
                                    mem[_12361 + ceil32(return_data.size)] = _12503
                                    require (32 * _12503) + _12443 + 32 <= return_data.size
                                    s = _12361 + ceil32(return_data.size) + 32
                                    idx = _12361 + _12443 + 32
                                    while idx < (32 * _12503) + _12361 + _12443 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12503:
                                        if idx >= mem[_12361 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17752 = mem[(32 * idx) + _12361 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17752))
                                        call address(_17752).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11366] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12401 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12476 = mem[_12401]
                                    require mem[_12401] <= test266151307()
                                    require _12401 + mem[_12401] + 31 < _12401 + return_data.size
                                    _12545 = mem[_12401 + mem[_12401]]
                                    if mem[_12401 + mem[_12401]] > test266151307():
                                        revert with 0, 65
                                    if _12401 + ceil32(return_data.size) + ceil32(32 * mem[_12401 + mem[_12401]]) + 1 > test266151307() or ceil32(32 * mem[_12401 + mem[_12401]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12401 + ceil32(return_data.size) + ceil32(32 * mem[_12401 + mem[_12401]]) + 1
                                    mem[_12401 + ceil32(return_data.size)] = _12545
                                    require (32 * _12545) + _12476 + 32 <= return_data.size
                                    s = _12401 + ceil32(return_data.size) + 32
                                    idx = _12401 + _12476 + 32
                                    while idx < (32 * _12545) + _12401 + _12476 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12545:
                                        if idx >= mem[_12401 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17757 = mem[(32 * idx) + _12401 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17757))
                                        call address(_17757).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    if not msg.sender:
                        revert with 0, 'burn-from-the-zero-address'
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 'burn-amount-exceeds-balance'
                    balanceOf[address(msg.sender)] -= arg1
                    if totalSupply < arg1:
                        revert with 0, 17
                    totalSupply -= arg1
                    emit 0xfeddf252: arg1, msg.sender, 0
                    if not balanceOf[address(msg.sender)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x275038d0 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xf2d5d56b with:
                         gas gas_remaining wei
                        args address(arg2), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x4700a5c5: arg1, 0, msg.sender, arg2
                else:
                    if arg1 and ext_call.return_data[0] > -1 / arg1:
                        revert with 0, 17
                    if arg1 * ext_call.return_data[0] > -500000000000000001:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _97 = mem[(7 * ceil32(return_data.size)) + 96]
                    require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                    _113 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _113) + _97 + 32 <= return_data.size
                    s = (8 * ceil32(return_data.size)) + 128
                    idx = (7 * ceil32(return_data.size)) + _97 + 128
                    while idx < (32 * _113) + (7 * ceil32(return_data.size)) + _97 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _113:
                        if idx >= mem[(8 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9311 = mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(ext_call.return_data[0])
                        require ext_code.size(address(_9311))
                        call address(_9311).0xb17b23a0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not msg.sender:
                        revert with 0, 'transfer-from-the-zero-address'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'transfer-to-the-zero-address'
                    if balanceOf[address(msg.sender)] < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                        revert with 0, 'transfer-amount-exceeds-balance'
                    balanceOf[address(msg.sender)] -= (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    if balanceOf[address(ext_call.return_data[0])] > !((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    balanceOf[address(ext_call.return_data[0])] += (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    emit 0xfeddf252: ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18), msg.sender, address(ext_call.return_data[0])
                    if balanceOf[address(ext_call.return_data[0])] < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                        revert with 0, 17
                    if balanceOf[address(ext_call.return_data[0])] - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9753 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9753] == bool(mem[_9753])
                            _9838 = mem[_9753 + 128]
                            if mem[_9753 + 128] <= 0:
                                if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10138 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10187 = mem[_10138]
                                require mem[_10138] <= test266151307()
                                require _10138 + mem[_10138] + 31 < _10138 + return_data.size
                                _10257 = mem[_10138 + mem[_10138]]
                                if mem[_10138 + mem[_10138]] > test266151307():
                                    revert with 0, 65
                                if _10138 + ceil32(return_data.size) + ceil32(32 * mem[_10138 + mem[_10138]]) + 1 > test266151307() or ceil32(32 * mem[_10138 + mem[_10138]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10138 + ceil32(return_data.size) + ceil32(32 * mem[_10138 + mem[_10138]]) + 1
                                mem[_10138 + ceil32(return_data.size)] = _10257
                                require (32 * _10257) + _10187 + 32 <= return_data.size
                                s = _10138 + ceil32(return_data.size) + 32
                                idx = _10138 + _10187 + 32
                                while idx < (32 * _10257) + _10138 + _10187 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10257:
                                    if idx >= mem[_10138 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17642 = mem[(32 * idx) + _10138 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17642))
                                    call address(_17642).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9753 + 128] and 10^18 > -1 / mem[_9753 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9753 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10416 = mem[_10364]
                                require mem[_10364] == mem[_10364 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9838) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10416))
                                staticcall address(_10416).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9838) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_10791]:
                                    if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11833 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _11982 = mem[_11833]
                                    require mem[_11833] <= test266151307()
                                    require _11833 + mem[_11833] + 31 < _11833 + return_data.size
                                    _12141 = mem[_11833 + mem[_11833]]
                                    if mem[_11833 + mem[_11833]] > test266151307():
                                        revert with 0, 65
                                    if _11833 + ceil32(return_data.size) + ceil32(32 * mem[_11833 + mem[_11833]]) + 1 > test266151307() or ceil32(32 * mem[_11833 + mem[_11833]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11833 + ceil32(return_data.size) + ceil32(32 * mem[_11833 + mem[_11833]]) + 1
                                    mem[_11833 + ceil32(return_data.size)] = _12141
                                    require (32 * _12141) + _11982 + 32 <= return_data.size
                                    s = _11833 + ceil32(return_data.size) + 32
                                    idx = _11833 + _11982 + 32
                                    while idx < (32 * _12141) + _11833 + _11982 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12141:
                                        if idx >= mem[_11833 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17647 = mem[(32 * idx) + _11833 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17647))
                                        call address(_17647).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_10791] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11877 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12063 = mem[_11877]
                                    require mem[_11877] <= test266151307()
                                    require _11877 + mem[_11877] + 31 < _11877 + return_data.size
                                    _12197 = mem[_11877 + mem[_11877]]
                                    if mem[_11877 + mem[_11877]] > test266151307():
                                        revert with 0, 65
                                    if _11877 + ceil32(return_data.size) + ceil32(32 * mem[_11877 + mem[_11877]]) + 1 > test266151307() or ceil32(32 * mem[_11877 + mem[_11877]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11877 + ceil32(return_data.size) + ceil32(32 * mem[_11877 + mem[_11877]]) + 1
                                    mem[_11877 + ceil32(return_data.size)] = _12197
                                    require (32 * _12197) + _12063 + 32 <= return_data.size
                                    s = _11877 + ceil32(return_data.size) + 32
                                    idx = _11877 + _12063 + 32
                                    while idx < (32 * _12197) + _11877 + _12063 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12197:
                                        if idx >= mem[_11877 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17652 = mem[(32 * idx) + _11877 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17652))
                                        call address(_17652).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9807 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9807] == bool(mem[_9807])
                            _9918 = mem[_9807 + 128]
                            if mem[_9807 + 128] <= 0:
                                if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10258 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10330 = mem[_10258]
                                require mem[_10258] <= test266151307()
                                require _10258 + mem[_10258] + 31 < _10258 + return_data.size
                                _10383 = mem[_10258 + mem[_10258]]
                                if mem[_10258 + mem[_10258]] > test266151307():
                                    revert with 0, 65
                                if _10258 + ceil32(return_data.size) + ceil32(32 * mem[_10258 + mem[_10258]]) + 1 > test266151307() or ceil32(32 * mem[_10258 + mem[_10258]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10258 + ceil32(return_data.size) + ceil32(32 * mem[_10258 + mem[_10258]]) + 1
                                mem[_10258 + ceil32(return_data.size)] = _10383
                                require (32 * _10383) + _10330 + 32 <= return_data.size
                                s = _10258 + ceil32(return_data.size) + 32
                                idx = _10258 + _10330 + 32
                                while idx < (32 * _10383) + _10258 + _10330 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10383:
                                    if idx >= mem[_10258 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17657 = mem[(32 * idx) + _10258 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17657))
                                    call address(_17657).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9807 + 128] and 10^18 > -1 / mem[_9807 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9807 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10510 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10569 = mem[_10510]
                                require mem[_10510] == mem[_10510 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9918) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10569))
                                staticcall address(_10569).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9918) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11098 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11098]:
                                    if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12142 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12259 = mem[_12142]
                                    require mem[_12142] <= test266151307()
                                    require _12142 + mem[_12142] + 31 < _12142 + return_data.size
                                    _12355 = mem[_12142 + mem[_12142]]
                                    if mem[_12142 + mem[_12142]] > test266151307():
                                        revert with 0, 65
                                    if _12142 + ceil32(return_data.size) + ceil32(32 * mem[_12142 + mem[_12142]]) + 1 > test266151307() or ceil32(32 * mem[_12142 + mem[_12142]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12142 + ceil32(return_data.size) + ceil32(32 * mem[_12142 + mem[_12142]]) + 1
                                    mem[_12142 + ceil32(return_data.size)] = _12355
                                    require (32 * _12355) + _12259 + 32 <= return_data.size
                                    s = _12142 + ceil32(return_data.size) + 32
                                    idx = _12142 + _12259 + 32
                                    while idx < (32 * _12355) + _12142 + _12259 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12355:
                                        if idx >= mem[_12142 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17662 = mem[(32 * idx) + _12142 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17662))
                                        call address(_17662).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11098] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12198 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12311 = mem[_12198]
                                    require mem[_12198] <= test266151307()
                                    require _12198 + mem[_12198] + 31 < _12198 + return_data.size
                                    _12393 = mem[_12198 + mem[_12198]]
                                    if mem[_12198 + mem[_12198]] > test266151307():
                                        revert with 0, 65
                                    if _12198 + ceil32(return_data.size) + ceil32(32 * mem[_12198 + mem[_12198]]) + 1 > test266151307() or ceil32(32 * mem[_12198 + mem[_12198]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12198 + ceil32(return_data.size) + ceil32(32 * mem[_12198 + mem[_12198]]) + 1
                                    mem[_12198 + ceil32(return_data.size)] = _12393
                                    require (32 * _12393) + _12311 + 32 <= return_data.size
                                    s = _12198 + ceil32(return_data.size) + 32
                                    idx = _12198 + _12311 + 32
                                    while idx < (32 * _12393) + _12198 + _12311 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12393:
                                        if idx >= mem[_12198 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17667 = mem[(32 * idx) + _12198 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17667))
                                        call address(_17667).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    else:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x3f5fc131 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9808] == bool(mem[_9808])
                            _9922 = mem[_9808 + 128]
                            if mem[_9808 + 128] <= 0:
                                if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10259 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10331 = mem[_10259]
                                require mem[_10259] <= test266151307()
                                require _10259 + mem[_10259] + 31 < _10259 + return_data.size
                                _10384 = mem[_10259 + mem[_10259]]
                                if mem[_10259 + mem[_10259]] > test266151307():
                                    revert with 0, 65
                                if _10259 + ceil32(return_data.size) + ceil32(32 * mem[_10259 + mem[_10259]]) + 1 > test266151307() or ceil32(32 * mem[_10259 + mem[_10259]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10259 + ceil32(return_data.size) + ceil32(32 * mem[_10259 + mem[_10259]]) + 1
                                mem[_10259 + ceil32(return_data.size)] = _10384
                                require (32 * _10384) + _10331 + 32 <= return_data.size
                                s = _10259 + ceil32(return_data.size) + 32
                                idx = _10259 + _10331 + 32
                                while idx < (32 * _10384) + _10259 + _10331 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10384:
                                    if idx >= mem[_10259 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17672 = mem[(32 * idx) + _10259 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17672))
                                    call address(_17672).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9808 + 128] and 10^18 > -1 / mem[_9808 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9808 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10570 = mem[_10511]
                                require mem[_10511] == mem[_10511 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9922) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10570))
                                staticcall address(_10570).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9922) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11104 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11104]:
                                    if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12144 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12260 = mem[_12144]
                                    require mem[_12144] <= test266151307()
                                    require _12144 + mem[_12144] + 31 < _12144 + return_data.size
                                    _12356 = mem[_12144 + mem[_12144]]
                                    if mem[_12144 + mem[_12144]] > test266151307():
                                        revert with 0, 65
                                    if _12144 + ceil32(return_data.size) + ceil32(32 * mem[_12144 + mem[_12144]]) + 1 > test266151307() or ceil32(32 * mem[_12144 + mem[_12144]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12144 + ceil32(return_data.size) + ceil32(32 * mem[_12144 + mem[_12144]]) + 1
                                    mem[_12144 + ceil32(return_data.size)] = _12356
                                    require (32 * _12356) + _12260 + 32 <= return_data.size
                                    s = _12144 + ceil32(return_data.size) + 32
                                    idx = _12144 + _12260 + 32
                                    while idx < (32 * _12356) + _12144 + _12260 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12356:
                                        if idx >= mem[_12144 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17677 = mem[(32 * idx) + _12144 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17677))
                                        call address(_17677).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11104] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12199 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12312 = mem[_12199]
                                    require mem[_12199] <= test266151307()
                                    require _12199 + mem[_12199] + 31 < _12199 + return_data.size
                                    _12395 = mem[_12199 + mem[_12199]]
                                    if mem[_12199 + mem[_12199]] > test266151307():
                                        revert with 0, 65
                                    if _12199 + ceil32(return_data.size) + ceil32(32 * mem[_12199 + mem[_12199]]) + 1 > test266151307() or ceil32(32 * mem[_12199 + mem[_12199]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12199 + ceil32(return_data.size) + ceil32(32 * mem[_12199 + mem[_12199]]) + 1
                                    mem[_12199 + ceil32(return_data.size)] = _12395
                                    require (32 * _12395) + _12312 + 32 <= return_data.size
                                    s = _12199 + ceil32(return_data.size) + 32
                                    idx = _12199 + _12312 + 32
                                    while idx < (32 * _12395) + _12199 + _12312 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12395:
                                        if idx >= mem[_12199 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17682 = mem[(32 * idx) + _12199 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17682))
                                        call address(_17682).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9895 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9895] == bool(mem[_9895])
                            _10028 = mem[_9895 + 128]
                            if mem[_9895 + 128] <= 0:
                                if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10385 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10491 = mem[_10385]
                                require mem[_10385] <= test266151307()
                                require _10385 + mem[_10385] + 31 < _10385 + return_data.size
                                _10536 = mem[_10385 + mem[_10385]]
                                if mem[_10385 + mem[_10385]] > test266151307():
                                    revert with 0, 65
                                if _10385 + ceil32(return_data.size) + ceil32(32 * mem[_10385 + mem[_10385]]) + 1 > test266151307() or ceil32(32 * mem[_10385 + mem[_10385]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10385 + ceil32(return_data.size) + ceil32(32 * mem[_10385 + mem[_10385]]) + 1
                                mem[_10385 + ceil32(return_data.size)] = _10536
                                require (32 * _10536) + _10491 + 32 <= return_data.size
                                s = _10385 + ceil32(return_data.size) + 32
                                idx = _10385 + _10491 + 32
                                while idx < (32 * _10536) + _10385 + _10491 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10536:
                                    if idx >= mem[_10385 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17687 = mem[(32 * idx) + _10385 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17687))
                                    call address(_17687).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9895 + 128] and 10^18 > -1 / mem[_9895 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9895 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10713 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10804 = mem[_10713]
                                require mem[_10713] == mem[_10713 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _10028) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10804))
                                staticcall address(_10804).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _10028) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11358]:
                                    if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12357 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12439 = mem[_12357]
                                    require mem[_12357] <= test266151307()
                                    require _12357 + mem[_12357] + 31 < _12357 + return_data.size
                                    _12500 = mem[_12357 + mem[_12357]]
                                    if mem[_12357 + mem[_12357]] > test266151307():
                                        revert with 0, 65
                                    if _12357 + ceil32(return_data.size) + ceil32(32 * mem[_12357 + mem[_12357]]) + 1 > test266151307() or ceil32(32 * mem[_12357 + mem[_12357]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12357 + ceil32(return_data.size) + ceil32(32 * mem[_12357 + mem[_12357]]) + 1
                                    mem[_12357 + ceil32(return_data.size)] = _12500
                                    require (32 * _12500) + _12439 + 32 <= return_data.size
                                    s = _12357 + ceil32(return_data.size) + 32
                                    idx = _12357 + _12439 + 32
                                    while idx < (32 * _12500) + _12357 + _12439 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12500:
                                        if idx >= mem[_12357 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17692 = mem[(32 * idx) + _12357 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17692))
                                        call address(_17692).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11358] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12396 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12473 = mem[_12396]
                                    require mem[_12396] <= test266151307()
                                    require _12396 + mem[_12396] + 31 < _12396 + return_data.size
                                    _12537 = mem[_12396 + mem[_12396]]
                                    if mem[_12396 + mem[_12396]] > test266151307():
                                        revert with 0, 65
                                    if _12396 + ceil32(return_data.size) + ceil32(32 * mem[_12396 + mem[_12396]]) + 1 > test266151307() or ceil32(32 * mem[_12396 + mem[_12396]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12396 + ceil32(return_data.size) + ceil32(32 * mem[_12396 + mem[_12396]]) + 1
                                    mem[_12396 + ceil32(return_data.size)] = _12537
                                    require (32 * _12537) + _12473 + 32 <= return_data.size
                                    s = _12396 + ceil32(return_data.size) + 32
                                    idx = _12396 + _12473 + 32
                                    while idx < (32 * _12537) + _12396 + _12473 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12537:
                                        if idx >= mem[_12396 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17697 = mem[(32 * idx) + _12396 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17697))
                                        call address(_17697).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    if not msg.sender:
                        revert with 0, 'burn-from-the-zero-address'
                    if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 'burn-amount-exceeds-balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg1 + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if totalSupply < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    totalSupply = totalSupply - arg1 + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    emit 0xfeddf252: (arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)), msg.sender, 0
                    if not balanceOf[address(msg.sender)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x275038d0 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xf2d5d56b with:
                         gas gas_remaining wei
                        args address(arg2), arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x4700a5c5: arg1, (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18, msg.sender, arg2
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
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        mem[(6 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x57f1915d with:
                gas gas_remaining wei
               args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'amount-gt-unlocked'
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x61d027b3 with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(controllerAddress)
            call controllerAddress.0xe941fa78 with:
                 gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xdde3ab95 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(10 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[128] <= 0:
                    if 0 < arg1:
                        revert with 0, 'not-enough-free-balance'
                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                        revert with 0, 17
                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                        revert with 0, 'min-deposit-time-have-not-passed'
                    mem[(11 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _403 = mem[(11 * ceil32(return_data.size)) + 96]
                    require mem[(11 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                    _435 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _435) + _403 + 32 <= return_data.size
                    s = (12 * ceil32(return_data.size)) + 128
                    idx = (11 * ceil32(return_data.size)) + _403 + 128
                    while idx < (32 * _435) + (11 * ceil32(return_data.size)) + _403 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _435:
                        if idx >= mem[(12 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9320 = mem[(32 * idx) + (12 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(_9320))
                        call address(_9320).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender
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
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(12 * ceil32(return_data.size)) + 100] = this.address
                    mem[(12 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x57f1915d with:
                            gas gas_remaining wei
                           args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
                    mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 'not-enough-free-balance'
                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                            revert with 0, 17
                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                            revert with 0, 'min-deposit-time-have-not-passed'
                        mem[(13 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1234 = mem[(13 * ceil32(return_data.size)) + 96]
                        require mem[(13 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                        _1308 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _1308) + _1234 + 32 <= return_data.size
                        s = (14 * ceil32(return_data.size)) + 128
                        idx = (13 * ceil32(return_data.size)) + _1234 + 128
                        while idx < (32 * _1308) + (13 * ceil32(return_data.size)) + _1234 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _1308:
                            if idx >= mem[(14 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9325 = mem[(32 * idx) + (14 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_9325))
                            call address(_9325).0x1b30f0c0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not-enough-free-balance'
                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                            revert with 0, 17
                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                            revert with 0, 'min-deposit-time-have-not-passed'
                        mem[(13 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1268 = mem[(13 * ceil32(return_data.size)) + 96]
                        require mem[(13 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                        _1341 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _1341) + _1268 + 32 <= return_data.size
                        s = (14 * ceil32(return_data.size)) + 128
                        idx = (13 * ceil32(return_data.size)) + _1268 + 128
                        while idx < (32 * _1341) + (13 * ceil32(return_data.size)) + _1268 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _1341:
                            if idx >= mem[(14 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9330 = mem[(32 * idx) + (14 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_9330))
                            call address(_9330).0x1b30f0c0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                if not msg.sender:
                    revert with 0, 'burn-from-the-zero-address'
                if balanceOf[address(msg.sender)] < arg1:
                    revert with 0, 'burn-amount-exceeds-balance'
                balanceOf[address(msg.sender)] -= arg1
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                emit 0xfeddf252: arg1, msg.sender, 0
                if not balanceOf[address(msg.sender)]:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x275038d0 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xf2d5d56b with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x4700a5c5: arg1, 0, msg.sender, arg2
            else:
                if not arg1:
                    mem[(10 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _224 = mem[(10 * ceil32(return_data.size)) + 96]
                    require mem[(10 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                    _238 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _238) + _224 + 32 <= return_data.size
                    s = (11 * ceil32(return_data.size)) + 128
                    idx = (10 * ceil32(return_data.size)) + _224 + 128
                    while idx < (32 * _238) + (10 * ceil32(return_data.size)) + _224 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _238:
                        if idx >= mem[(11 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9334 = mem[(32 * idx) + (11 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(ext_call.return_data[0])
                        require ext_code.size(address(_9334))
                        call address(_9334).0xb17b23a0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not msg.sender:
                        revert with 0, 'transfer-from-the-zero-address'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'transfer-to-the-zero-address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'transfer-amount-exceeds-balance'
                    if balanceOf[address(ext_call.return_data[0])] > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                    if balanceOf[address(ext_call.return_data[0])] < 0:
                        revert with 0, 17
                    if balanceOf[address(ext_call.return_data[0])]:
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9759] == bool(mem[_9759])
                            _9846 = mem[_9759 + 128]
                            if mem[_9759 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10140 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10197 = mem[_10140]
                                require mem[_10140] <= test266151307()
                                require _10140 + mem[_10140] + 31 < _10140 + return_data.size
                                _10263 = mem[_10140 + mem[_10140]]
                                if mem[_10140 + mem[_10140]] > test266151307():
                                    revert with 0, 65
                                if _10140 + ceil32(return_data.size) + ceil32(32 * mem[_10140 + mem[_10140]]) + 1 > test266151307() or ceil32(32 * mem[_10140 + mem[_10140]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10140 + ceil32(return_data.size) + ceil32(32 * mem[_10140 + mem[_10140]]) + 1
                                mem[_10140 + ceil32(return_data.size)] = _10263
                                require (32 * _10263) + _10197 + 32 <= return_data.size
                                s = _10140 + ceil32(return_data.size) + 32
                                idx = _10140 + _10197 + 32
                                while idx < (32 * _10263) + _10140 + _10197 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10263:
                                    if idx >= mem[_10140 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17762 = mem[(32 * idx) + _10140 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17762))
                                    call address(_17762).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9759 + 128] and 10^18 > -1 / mem[_9759 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9759 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10368 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10434 = mem[_10368]
                                require mem[_10368] == mem[_10368 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9846) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10434))
                                staticcall address(_10434).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9846) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_10829]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11841 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12000 = mem[_11841]
                                    require mem[_11841] <= test266151307()
                                    require _11841 + mem[_11841] + 31 < _11841 + return_data.size
                                    _12153 = mem[_11841 + mem[_11841]]
                                    if mem[_11841 + mem[_11841]] > test266151307():
                                        revert with 0, 65
                                    if _11841 + ceil32(return_data.size) + ceil32(32 * mem[_11841 + mem[_11841]]) + 1 > test266151307() or ceil32(32 * mem[_11841 + mem[_11841]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11841 + ceil32(return_data.size) + ceil32(32 * mem[_11841 + mem[_11841]]) + 1
                                    mem[_11841 + ceil32(return_data.size)] = _12153
                                    require (32 * _12153) + _12000 + 32 <= return_data.size
                                    s = _11841 + ceil32(return_data.size) + 32
                                    idx = _11841 + _12000 + 32
                                    while idx < (32 * _12153) + _11841 + _12000 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12153:
                                        if idx >= mem[_11841 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17767 = mem[(32 * idx) + _11841 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17767))
                                        call address(_17767).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_10829] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11901 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12081 = mem[_11901]
                                    require mem[_11901] <= test266151307()
                                    require _11901 + mem[_11901] + 31 < _11901 + return_data.size
                                    _12211 = mem[_11901 + mem[_11901]]
                                    if mem[_11901 + mem[_11901]] > test266151307():
                                        revert with 0, 65
                                    if _11901 + ceil32(return_data.size) + ceil32(32 * mem[_11901 + mem[_11901]]) + 1 > test266151307() or ceil32(32 * mem[_11901 + mem[_11901]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11901 + ceil32(return_data.size) + ceil32(32 * mem[_11901 + mem[_11901]]) + 1
                                    mem[_11901 + ceil32(return_data.size)] = _12211
                                    require (32 * _12211) + _12081 + 32 <= return_data.size
                                    s = _11901 + ceil32(return_data.size) + 32
                                    idx = _11901 + _12081 + 32
                                    while idx < (32 * _12211) + _11901 + _12081 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12211:
                                        if idx >= mem[_11901 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17772 = mem[(32 * idx) + _11901 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17772))
                                        call address(_17772).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9813 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9813] == bool(mem[_9813])
                            _9938 = mem[_9813 + 128]
                            if mem[_9813 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10264 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10338 = mem[_10264]
                                require mem[_10264] <= test266151307()
                                require _10264 + mem[_10264] + 31 < _10264 + return_data.size
                                _10389 = mem[_10264 + mem[_10264]]
                                if mem[_10264 + mem[_10264]] > test266151307():
                                    revert with 0, 65
                                if _10264 + ceil32(return_data.size) + ceil32(32 * mem[_10264 + mem[_10264]]) + 1 > test266151307() or ceil32(32 * mem[_10264 + mem[_10264]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10264 + ceil32(return_data.size) + ceil32(32 * mem[_10264 + mem[_10264]]) + 1
                                mem[_10264 + ceil32(return_data.size)] = _10389
                                require (32 * _10389) + _10338 + 32 <= return_data.size
                                s = _10264 + ceil32(return_data.size) + 32
                                idx = _10264 + _10338 + 32
                                while idx < (32 * _10389) + _10264 + _10338 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10389:
                                    if idx >= mem[_10264 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17777 = mem[(32 * idx) + _10264 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17777))
                                    call address(_17777).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9813 + 128] and 10^18 > -1 / mem[_9813 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9813 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10516 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10593 = mem[_10516]
                                require mem[_10516] == mem[_10516 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9938) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10593))
                                staticcall address(_10593).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9938) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11136]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12154 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12271 = mem[_12154]
                                    require mem[_12154] <= test266151307()
                                    require _12154 + mem[_12154] + 31 < _12154 + return_data.size
                                    _12363 = mem[_12154 + mem[_12154]]
                                    if mem[_12154 + mem[_12154]] > test266151307():
                                        revert with 0, 65
                                    if _12154 + ceil32(return_data.size) + ceil32(32 * mem[_12154 + mem[_12154]]) + 1 > test266151307() or ceil32(32 * mem[_12154 + mem[_12154]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12154 + ceil32(return_data.size) + ceil32(32 * mem[_12154 + mem[_12154]]) + 1
                                    mem[_12154 + ceil32(return_data.size)] = _12363
                                    require (32 * _12363) + _12271 + 32 <= return_data.size
                                    s = _12154 + ceil32(return_data.size) + 32
                                    idx = _12154 + _12271 + 32
                                    while idx < (32 * _12363) + _12154 + _12271 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12363:
                                        if idx >= mem[_12154 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17782 = mem[(32 * idx) + _12154 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17782))
                                        call address(_17782).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11136] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12212 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12321 = mem[_12212]
                                    require mem[_12212] <= test266151307()
                                    require _12212 + mem[_12212] + 31 < _12212 + return_data.size
                                    _12403 = mem[_12212 + mem[_12212]]
                                    if mem[_12212 + mem[_12212]] > test266151307():
                                        revert with 0, 65
                                    if _12212 + ceil32(return_data.size) + ceil32(32 * mem[_12212 + mem[_12212]]) + 1 > test266151307() or ceil32(32 * mem[_12212 + mem[_12212]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12212 + ceil32(return_data.size) + ceil32(32 * mem[_12212 + mem[_12212]]) + 1
                                    mem[_12212 + ceil32(return_data.size)] = _12403
                                    require (32 * _12403) + _12321 + 32 <= return_data.size
                                    s = _12212 + ceil32(return_data.size) + 32
                                    idx = _12212 + _12321 + 32
                                    while idx < (32 * _12403) + _12212 + _12321 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12403:
                                        if idx >= mem[_12212 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17787 = mem[(32 * idx) + _12212 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17787))
                                        call address(_17787).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    else:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x3f5fc131 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9814] == bool(mem[_9814])
                            _9942 = mem[_9814 + 128]
                            if mem[_9814 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10265 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10339 = mem[_10265]
                                require mem[_10265] <= test266151307()
                                require _10265 + mem[_10265] + 31 < _10265 + return_data.size
                                _10390 = mem[_10265 + mem[_10265]]
                                if mem[_10265 + mem[_10265]] > test266151307():
                                    revert with 0, 65
                                if _10265 + ceil32(return_data.size) + ceil32(32 * mem[_10265 + mem[_10265]]) + 1 > test266151307() or ceil32(32 * mem[_10265 + mem[_10265]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10265 + ceil32(return_data.size) + ceil32(32 * mem[_10265 + mem[_10265]]) + 1
                                mem[_10265 + ceil32(return_data.size)] = _10390
                                require (32 * _10390) + _10339 + 32 <= return_data.size
                                s = _10265 + ceil32(return_data.size) + 32
                                idx = _10265 + _10339 + 32
                                while idx < (32 * _10390) + _10265 + _10339 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10390:
                                    if idx >= mem[_10265 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17792 = mem[(32 * idx) + _10265 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17792))
                                    call address(_17792).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9814 + 128] and 10^18 > -1 / mem[_9814 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9814 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10517 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10594 = mem[_10517]
                                require mem[_10517] == mem[_10517 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9942) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10594))
                                staticcall address(_10594).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9942) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11142 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11142]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12156 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12272 = mem[_12156]
                                    require mem[_12156] <= test266151307()
                                    require _12156 + mem[_12156] + 31 < _12156 + return_data.size
                                    _12364 = mem[_12156 + mem[_12156]]
                                    if mem[_12156 + mem[_12156]] > test266151307():
                                        revert with 0, 65
                                    if _12156 + ceil32(return_data.size) + ceil32(32 * mem[_12156 + mem[_12156]]) + 1 > test266151307() or ceil32(32 * mem[_12156 + mem[_12156]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12156 + ceil32(return_data.size) + ceil32(32 * mem[_12156 + mem[_12156]]) + 1
                                    mem[_12156 + ceil32(return_data.size)] = _12364
                                    require (32 * _12364) + _12272 + 32 <= return_data.size
                                    s = _12156 + ceil32(return_data.size) + 32
                                    idx = _12156 + _12272 + 32
                                    while idx < (32 * _12364) + _12156 + _12272 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12364:
                                        if idx >= mem[_12156 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17797 = mem[(32 * idx) + _12156 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17797))
                                        call address(_17797).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11142] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12213 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12322 = mem[_12213]
                                    require mem[_12213] <= test266151307()
                                    require _12213 + mem[_12213] + 31 < _12213 + return_data.size
                                    _12405 = mem[_12213 + mem[_12213]]
                                    if mem[_12213 + mem[_12213]] > test266151307():
                                        revert with 0, 65
                                    if _12213 + ceil32(return_data.size) + ceil32(32 * mem[_12213 + mem[_12213]]) + 1 > test266151307() or ceil32(32 * mem[_12213 + mem[_12213]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12213 + ceil32(return_data.size) + ceil32(32 * mem[_12213 + mem[_12213]]) + 1
                                    mem[_12213 + ceil32(return_data.size)] = _12405
                                    require (32 * _12405) + _12322 + 32 <= return_data.size
                                    s = _12213 + ceil32(return_data.size) + 32
                                    idx = _12213 + _12322 + 32
                                    while idx < (32 * _12405) + _12213 + _12322 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12405:
                                        if idx >= mem[_12213 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17802 = mem[(32 * idx) + _12213 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17802))
                                        call address(_17802).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9897 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9897] == bool(mem[_9897])
                            _10046 = mem[_9897 + 128]
                            if mem[_9897 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10391 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10495 = mem[_10391]
                                require mem[_10391] <= test266151307()
                                require _10391 + mem[_10391] + 31 < _10391 + return_data.size
                                _10540 = mem[_10391 + mem[_10391]]
                                if mem[_10391 + mem[_10391]] > test266151307():
                                    revert with 0, 65
                                if _10391 + ceil32(return_data.size) + ceil32(32 * mem[_10391 + mem[_10391]]) + 1 > test266151307() or ceil32(32 * mem[_10391 + mem[_10391]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10391 + ceil32(return_data.size) + ceil32(32 * mem[_10391 + mem[_10391]]) + 1
                                mem[_10391 + ceil32(return_data.size)] = _10540
                                require (32 * _10540) + _10495 + 32 <= return_data.size
                                s = _10391 + ceil32(return_data.size) + 32
                                idx = _10391 + _10495 + 32
                                while idx < (32 * _10540) + _10391 + _10495 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10540:
                                    if idx >= mem[_10391 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17807 = mem[(32 * idx) + _10391 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17807))
                                    call address(_17807).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9897 + 128] and 10^18 > -1 / mem[_9897 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9897 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10723 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10842 = mem[_10723]
                                require mem[_10723] == mem[_10723 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _10046) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10842))
                                staticcall address(_10842).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _10046) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11374]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12365 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12447 = mem[_12365]
                                    require mem[_12365] <= test266151307()
                                    require _12365 + mem[_12365] + 31 < _12365 + return_data.size
                                    _12506 = mem[_12365 + mem[_12365]]
                                    if mem[_12365 + mem[_12365]] > test266151307():
                                        revert with 0, 65
                                    if _12365 + ceil32(return_data.size) + ceil32(32 * mem[_12365 + mem[_12365]]) + 1 > test266151307() or ceil32(32 * mem[_12365 + mem[_12365]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12365 + ceil32(return_data.size) + ceil32(32 * mem[_12365 + mem[_12365]]) + 1
                                    mem[_12365 + ceil32(return_data.size)] = _12506
                                    require (32 * _12506) + _12447 + 32 <= return_data.size
                                    s = _12365 + ceil32(return_data.size) + 32
                                    idx = _12365 + _12447 + 32
                                    while idx < (32 * _12506) + _12365 + _12447 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12506:
                                        if idx >= mem[_12365 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17812 = mem[(32 * idx) + _12365 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17812))
                                        call address(_17812).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11374] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12406 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12479 = mem[_12406]
                                    require mem[_12406] <= test266151307()
                                    require _12406 + mem[_12406] + 31 < _12406 + return_data.size
                                    _12553 = mem[_12406 + mem[_12406]]
                                    if mem[_12406 + mem[_12406]] > test266151307():
                                        revert with 0, 65
                                    if _12406 + ceil32(return_data.size) + ceil32(32 * mem[_12406 + mem[_12406]]) + 1 > test266151307() or ceil32(32 * mem[_12406 + mem[_12406]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12406 + ceil32(return_data.size) + ceil32(32 * mem[_12406 + mem[_12406]]) + 1
                                    mem[_12406 + ceil32(return_data.size)] = _12553
                                    require (32 * _12553) + _12479 + 32 <= return_data.size
                                    s = _12406 + ceil32(return_data.size) + 32
                                    idx = _12406 + _12479 + 32
                                    while idx < (32 * _12553) + _12406 + _12479 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12553:
                                        if idx >= mem[_12406 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17817 = mem[(32 * idx) + _12406 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17817))
                                        call address(_17817).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    if not msg.sender:
                        revert with 0, 'burn-from-the-zero-address'
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 'burn-amount-exceeds-balance'
                    balanceOf[address(msg.sender)] -= arg1
                    if totalSupply < arg1:
                        revert with 0, 17
                    totalSupply -= arg1
                    emit 0xfeddf252: arg1, msg.sender, 0
                    if not balanceOf[address(msg.sender)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x275038d0 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xf2d5d56b with:
                         gas gas_remaining wei
                        args address(arg2), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x4700a5c5: arg1, 0, msg.sender, arg2
                else:
                    if not ext_call.return_data[0]:
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _234 = mem[(10 * ceil32(return_data.size)) + 96]
                        require mem[(10 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _248 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _248) + _234 + 32 <= return_data.size
                        s = (11 * ceil32(return_data.size)) + 128
                        idx = (10 * ceil32(return_data.size)) + _234 + 128
                        while idx < (32 * _248) + (10 * ceil32(return_data.size)) + _234 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _248:
                            if idx >= mem[(11 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9342 = mem[(32 * idx) + (11 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = address(ext_call.return_data[0])
                            require ext_code.size(address(_9342))
                            call address(_9342).0xb17b23a0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not msg.sender:
                            revert with 0, 'transfer-from-the-zero-address'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'transfer-to-the-zero-address'
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'transfer-amount-exceeds-balance'
                        if balanceOf[address(ext_call.return_data[0])] > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                        if balanceOf[address(ext_call.return_data[0])] < 0:
                            revert with 0, 17
                        if balanceOf[address(ext_call.return_data[0])]:
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9765] == bool(mem[_9765])
                                _9854 = mem[_9765 + 128]
                                if mem[_9765 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10142 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10207 = mem[_10142]
                                    require mem[_10142] <= test266151307()
                                    require _10142 + mem[_10142] + 31 < _10142 + return_data.size
                                    _10269 = mem[_10142 + mem[_10142]]
                                    if mem[_10142 + mem[_10142]] > test266151307():
                                        revert with 0, 65
                                    if _10142 + ceil32(return_data.size) + ceil32(32 * mem[_10142 + mem[_10142]]) + 1 > test266151307() or ceil32(32 * mem[_10142 + mem[_10142]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10142 + ceil32(return_data.size) + ceil32(32 * mem[_10142 + mem[_10142]]) + 1
                                    mem[_10142 + ceil32(return_data.size)] = _10269
                                    require (32 * _10269) + _10207 + 32 <= return_data.size
                                    s = _10142 + ceil32(return_data.size) + 32
                                    idx = _10142 + _10207 + 32
                                    while idx < (32 * _10269) + _10142 + _10207 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10269:
                                        if idx >= mem[_10142 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17882 = mem[(32 * idx) + _10142 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17882))
                                        call address(_17882).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9765 + 128] and 10^18 > -1 / mem[_9765 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9765 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10372 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10452 = mem[_10372]
                                    require mem[_10372] == mem[_10372 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9854) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10452))
                                    staticcall address(_10452).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9854) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10867 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_10867]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11849 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12018 = mem[_11849]
                                        require mem[_11849] <= test266151307()
                                        require _11849 + mem[_11849] + 31 < _11849 + return_data.size
                                        _12165 = mem[_11849 + mem[_11849]]
                                        if mem[_11849 + mem[_11849]] > test266151307():
                                            revert with 0, 65
                                        if _11849 + ceil32(return_data.size) + ceil32(32 * mem[_11849 + mem[_11849]]) + 1 > test266151307() or ceil32(32 * mem[_11849 + mem[_11849]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11849 + ceil32(return_data.size) + ceil32(32 * mem[_11849 + mem[_11849]]) + 1
                                        mem[_11849 + ceil32(return_data.size)] = _12165
                                        require (32 * _12165) + _12018 + 32 <= return_data.size
                                        s = _11849 + ceil32(return_data.size) + 32
                                        idx = _11849 + _12018 + 32
                                        while idx < (32 * _12165) + _11849 + _12018 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12165:
                                            if idx >= mem[_11849 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17887 = mem[(32 * idx) + _11849 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17887))
                                            call address(_17887).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_10867] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11925 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12099 = mem[_11925]
                                        require mem[_11925] <= test266151307()
                                        require _11925 + mem[_11925] + 31 < _11925 + return_data.size
                                        _12225 = mem[_11925 + mem[_11925]]
                                        if mem[_11925 + mem[_11925]] > test266151307():
                                            revert with 0, 65
                                        if _11925 + ceil32(return_data.size) + ceil32(32 * mem[_11925 + mem[_11925]]) + 1 > test266151307() or ceil32(32 * mem[_11925 + mem[_11925]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11925 + ceil32(return_data.size) + ceil32(32 * mem[_11925 + mem[_11925]]) + 1
                                        mem[_11925 + ceil32(return_data.size)] = _12225
                                        require (32 * _12225) + _12099 + 32 <= return_data.size
                                        s = _11925 + ceil32(return_data.size) + 32
                                        idx = _11925 + _12099 + 32
                                        while idx < (32 * _12225) + _11925 + _12099 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12225:
                                            if idx >= mem[_11925 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17892 = mem[(32 * idx) + _11925 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17892))
                                            call address(_17892).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9819] == bool(mem[_9819])
                                _9958 = mem[_9819 + 128]
                                if mem[_9819 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10270 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10346 = mem[_10270]
                                    require mem[_10270] <= test266151307()
                                    require _10270 + mem[_10270] + 31 < _10270 + return_data.size
                                    _10395 = mem[_10270 + mem[_10270]]
                                    if mem[_10270 + mem[_10270]] > test266151307():
                                        revert with 0, 65
                                    if _10270 + ceil32(return_data.size) + ceil32(32 * mem[_10270 + mem[_10270]]) + 1 > test266151307() or ceil32(32 * mem[_10270 + mem[_10270]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10270 + ceil32(return_data.size) + ceil32(32 * mem[_10270 + mem[_10270]]) + 1
                                    mem[_10270 + ceil32(return_data.size)] = _10395
                                    require (32 * _10395) + _10346 + 32 <= return_data.size
                                    s = _10270 + ceil32(return_data.size) + 32
                                    idx = _10270 + _10346 + 32
                                    while idx < (32 * _10395) + _10270 + _10346 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10395:
                                        if idx >= mem[_10270 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17897 = mem[(32 * idx) + _10270 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17897))
                                        call address(_17897).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9819 + 128] and 10^18 > -1 / mem[_9819 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9819 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10522 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10617 = mem[_10522]
                                    require mem[_10522] == mem[_10522 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9958) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10617))
                                    staticcall address(_10617).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9958) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11174 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11174]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12166 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12283 = mem[_12166]
                                        require mem[_12166] <= test266151307()
                                        require _12166 + mem[_12166] + 31 < _12166 + return_data.size
                                        _12371 = mem[_12166 + mem[_12166]]
                                        if mem[_12166 + mem[_12166]] > test266151307():
                                            revert with 0, 65
                                        if _12166 + ceil32(return_data.size) + ceil32(32 * mem[_12166 + mem[_12166]]) + 1 > test266151307() or ceil32(32 * mem[_12166 + mem[_12166]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12166 + ceil32(return_data.size) + ceil32(32 * mem[_12166 + mem[_12166]]) + 1
                                        mem[_12166 + ceil32(return_data.size)] = _12371
                                        require (32 * _12371) + _12283 + 32 <= return_data.size
                                        s = _12166 + ceil32(return_data.size) + 32
                                        idx = _12166 + _12283 + 32
                                        while idx < (32 * _12371) + _12166 + _12283 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12371:
                                            if idx >= mem[_12166 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17902 = mem[(32 * idx) + _12166 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17902))
                                            call address(_17902).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11174] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12226 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12331 = mem[_12226]
                                        require mem[_12226] <= test266151307()
                                        require _12226 + mem[_12226] + 31 < _12226 + return_data.size
                                        _12413 = mem[_12226 + mem[_12226]]
                                        if mem[_12226 + mem[_12226]] > test266151307():
                                            revert with 0, 65
                                        if _12226 + ceil32(return_data.size) + ceil32(32 * mem[_12226 + mem[_12226]]) + 1 > test266151307() or ceil32(32 * mem[_12226 + mem[_12226]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12226 + ceil32(return_data.size) + ceil32(32 * mem[_12226 + mem[_12226]]) + 1
                                        mem[_12226 + ceil32(return_data.size)] = _12413
                                        require (32 * _12413) + _12331 + 32 <= return_data.size
                                        s = _12226 + ceil32(return_data.size) + 32
                                        idx = _12226 + _12331 + 32
                                        while idx < (32 * _12413) + _12226 + _12331 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12413:
                                            if idx >= mem[_12226 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17907 = mem[(32 * idx) + _12226 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17907))
                                            call address(_17907).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x3f5fc131 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9820 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9820] == bool(mem[_9820])
                                _9962 = mem[_9820 + 128]
                                if mem[_9820 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10271 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10347 = mem[_10271]
                                    require mem[_10271] <= test266151307()
                                    require _10271 + mem[_10271] + 31 < _10271 + return_data.size
                                    _10396 = mem[_10271 + mem[_10271]]
                                    if mem[_10271 + mem[_10271]] > test266151307():
                                        revert with 0, 65
                                    if _10271 + ceil32(return_data.size) + ceil32(32 * mem[_10271 + mem[_10271]]) + 1 > test266151307() or ceil32(32 * mem[_10271 + mem[_10271]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10271 + ceil32(return_data.size) + ceil32(32 * mem[_10271 + mem[_10271]]) + 1
                                    mem[_10271 + ceil32(return_data.size)] = _10396
                                    require (32 * _10396) + _10347 + 32 <= return_data.size
                                    s = _10271 + ceil32(return_data.size) + 32
                                    idx = _10271 + _10347 + 32
                                    while idx < (32 * _10396) + _10271 + _10347 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10396:
                                        if idx >= mem[_10271 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17912 = mem[(32 * idx) + _10271 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17912))
                                        call address(_17912).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9820 + 128] and 10^18 > -1 / mem[_9820 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9820 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10523 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10618 = mem[_10523]
                                    require mem[_10523] == mem[_10523 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9962) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10618))
                                    staticcall address(_10618).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9962) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11180 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11180]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12168 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12284 = mem[_12168]
                                        require mem[_12168] <= test266151307()
                                        require _12168 + mem[_12168] + 31 < _12168 + return_data.size
                                        _12372 = mem[_12168 + mem[_12168]]
                                        if mem[_12168 + mem[_12168]] > test266151307():
                                            revert with 0, 65
                                        if _12168 + ceil32(return_data.size) + ceil32(32 * mem[_12168 + mem[_12168]]) + 1 > test266151307() or ceil32(32 * mem[_12168 + mem[_12168]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12168 + ceil32(return_data.size) + ceil32(32 * mem[_12168 + mem[_12168]]) + 1
                                        mem[_12168 + ceil32(return_data.size)] = _12372
                                        require (32 * _12372) + _12284 + 32 <= return_data.size
                                        s = _12168 + ceil32(return_data.size) + 32
                                        idx = _12168 + _12284 + 32
                                        while idx < (32 * _12372) + _12168 + _12284 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12372:
                                            if idx >= mem[_12168 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17917 = mem[(32 * idx) + _12168 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17917))
                                            call address(_17917).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11180] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12227 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12332 = mem[_12227]
                                        require mem[_12227] <= test266151307()
                                        require _12227 + mem[_12227] + 31 < _12227 + return_data.size
                                        _12415 = mem[_12227 + mem[_12227]]
                                        if mem[_12227 + mem[_12227]] > test266151307():
                                            revert with 0, 65
                                        if _12227 + ceil32(return_data.size) + ceil32(32 * mem[_12227 + mem[_12227]]) + 1 > test266151307() or ceil32(32 * mem[_12227 + mem[_12227]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12227 + ceil32(return_data.size) + ceil32(32 * mem[_12227 + mem[_12227]]) + 1
                                        mem[_12227 + ceil32(return_data.size)] = _12415
                                        require (32 * _12415) + _12332 + 32 <= return_data.size
                                        s = _12227 + ceil32(return_data.size) + 32
                                        idx = _12227 + _12332 + 32
                                        while idx < (32 * _12415) + _12227 + _12332 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12415:
                                            if idx >= mem[_12227 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17922 = mem[(32 * idx) + _12227 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17922))
                                            call address(_17922).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9899 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9899] == bool(mem[_9899])
                                _10064 = mem[_9899 + 128]
                                if mem[_9899 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10397 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10499 = mem[_10397]
                                    require mem[_10397] <= test266151307()
                                    require _10397 + mem[_10397] + 31 < _10397 + return_data.size
                                    _10544 = mem[_10397 + mem[_10397]]
                                    if mem[_10397 + mem[_10397]] > test266151307():
                                        revert with 0, 65
                                    if _10397 + ceil32(return_data.size) + ceil32(32 * mem[_10397 + mem[_10397]]) + 1 > test266151307() or ceil32(32 * mem[_10397 + mem[_10397]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10397 + ceil32(return_data.size) + ceil32(32 * mem[_10397 + mem[_10397]]) + 1
                                    mem[_10397 + ceil32(return_data.size)] = _10544
                                    require (32 * _10544) + _10499 + 32 <= return_data.size
                                    s = _10397 + ceil32(return_data.size) + 32
                                    idx = _10397 + _10499 + 32
                                    while idx < (32 * _10544) + _10397 + _10499 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10544:
                                        if idx >= mem[_10397 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17927 = mem[(32 * idx) + _10397 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17927))
                                        call address(_17927).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9899 + 128] and 10^18 > -1 / mem[_9899 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9899 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10733 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10880 = mem[_10733]
                                    require mem[_10733] == mem[_10733 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _10064) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10880))
                                    staticcall address(_10880).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _10064) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11390]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12373 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12455 = mem[_12373]
                                        require mem[_12373] <= test266151307()
                                        require _12373 + mem[_12373] + 31 < _12373 + return_data.size
                                        _12512 = mem[_12373 + mem[_12373]]
                                        if mem[_12373 + mem[_12373]] > test266151307():
                                            revert with 0, 65
                                        if _12373 + ceil32(return_data.size) + ceil32(32 * mem[_12373 + mem[_12373]]) + 1 > test266151307() or ceil32(32 * mem[_12373 + mem[_12373]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12373 + ceil32(return_data.size) + ceil32(32 * mem[_12373 + mem[_12373]]) + 1
                                        mem[_12373 + ceil32(return_data.size)] = _12512
                                        require (32 * _12512) + _12455 + 32 <= return_data.size
                                        s = _12373 + ceil32(return_data.size) + 32
                                        idx = _12373 + _12455 + 32
                                        while idx < (32 * _12512) + _12373 + _12455 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12512:
                                            if idx >= mem[_12373 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17932 = mem[(32 * idx) + _12373 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17932))
                                            call address(_17932).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11390] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12416 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12485 = mem[_12416]
                                        require mem[_12416] <= test266151307()
                                        require _12416 + mem[_12416] + 31 < _12416 + return_data.size
                                        _12569 = mem[_12416 + mem[_12416]]
                                        if mem[_12416 + mem[_12416]] > test266151307():
                                            revert with 0, 65
                                        if _12416 + ceil32(return_data.size) + ceil32(32 * mem[_12416 + mem[_12416]]) + 1 > test266151307() or ceil32(32 * mem[_12416 + mem[_12416]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12416 + ceil32(return_data.size) + ceil32(32 * mem[_12416 + mem[_12416]]) + 1
                                        mem[_12416 + ceil32(return_data.size)] = _12569
                                        require (32 * _12569) + _12485 + 32 <= return_data.size
                                        s = _12416 + ceil32(return_data.size) + 32
                                        idx = _12416 + _12485 + 32
                                        while idx < (32 * _12569) + _12416 + _12485 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12569:
                                            if idx >= mem[_12416 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17937 = mem[(32 * idx) + _12416 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17937))
                                            call address(_17937).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        if not msg.sender:
                            revert with 0, 'burn-from-the-zero-address'
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 'burn-amount-exceeds-balance'
                        balanceOf[address(msg.sender)] -= arg1
                        if totalSupply < arg1:
                            revert with 0, 17
                        totalSupply -= arg1
                        emit 0xfeddf252: arg1, msg.sender, 0
                        if not balanceOf[address(msg.sender)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xf2d5d56b with:
                             gas gas_remaining wei
                            args address(arg2), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x4700a5c5: arg1, 0, msg.sender, arg2
                    else:
                        if arg1 and ext_call.return_data[0] > -1 / arg1:
                            revert with 0, 17
                        if arg1 * ext_call.return_data[0] > -500000000000000001:
                            revert with 0, 17
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _352 = mem[(10 * ceil32(return_data.size)) + 96]
                        require mem[(10 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _405 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _405) + _352 + 32 <= return_data.size
                        s = (11 * ceil32(return_data.size)) + 128
                        idx = (10 * ceil32(return_data.size)) + _352 + 128
                        while idx < (32 * _405) + (10 * ceil32(return_data.size)) + _352 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _405:
                            if idx >= mem[(11 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9338 = mem[(32 * idx) + (11 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = address(ext_call.return_data[0])
                            require ext_code.size(address(_9338))
                            call address(_9338).0xb17b23a0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not msg.sender:
                            revert with 0, 'transfer-from-the-zero-address'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'transfer-to-the-zero-address'
                        if balanceOf[address(msg.sender)] < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                            revert with 0, 'transfer-amount-exceeds-balance'
                        balanceOf[address(msg.sender)] -= (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        if balanceOf[address(ext_call.return_data[0])] > !((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        balanceOf[address(ext_call.return_data[0])] += (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        emit 0xfeddf252: ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18), msg.sender, address(ext_call.return_data[0])
                        if balanceOf[address(ext_call.return_data[0])] < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                            revert with 0, 17
                        if balanceOf[address(ext_call.return_data[0])] - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9762 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9762] == bool(mem[_9762])
                                _9850 = mem[_9762 + 128]
                                if mem[_9762 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10141 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10202 = mem[_10141]
                                    require mem[_10141] <= test266151307()
                                    require _10141 + mem[_10141] + 31 < _10141 + return_data.size
                                    _10266 = mem[_10141 + mem[_10141]]
                                    if mem[_10141 + mem[_10141]] > test266151307():
                                        revert with 0, 65
                                    if _10141 + ceil32(return_data.size) + ceil32(32 * mem[_10141 + mem[_10141]]) + 1 > test266151307() or ceil32(32 * mem[_10141 + mem[_10141]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10141 + ceil32(return_data.size) + ceil32(32 * mem[_10141 + mem[_10141]]) + 1
                                    mem[_10141 + ceil32(return_data.size)] = _10266
                                    require (32 * _10266) + _10202 + 32 <= return_data.size
                                    s = _10141 + ceil32(return_data.size) + 32
                                    idx = _10141 + _10202 + 32
                                    while idx < (32 * _10266) + _10141 + _10202 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10266:
                                        if idx >= mem[_10141 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17822 = mem[(32 * idx) + _10141 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17822))
                                        call address(_17822).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9762 + 128] and 10^18 > -1 / mem[_9762 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9762 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10370 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10443 = mem[_10370]
                                    require mem[_10370] == mem[_10370 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9850) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10443))
                                    staticcall address(_10443).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9850) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10848 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_10848]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11845 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12009 = mem[_11845]
                                        require mem[_11845] <= test266151307()
                                        require _11845 + mem[_11845] + 31 < _11845 + return_data.size
                                        _12159 = mem[_11845 + mem[_11845]]
                                        if mem[_11845 + mem[_11845]] > test266151307():
                                            revert with 0, 65
                                        if _11845 + ceil32(return_data.size) + ceil32(32 * mem[_11845 + mem[_11845]]) + 1 > test266151307() or ceil32(32 * mem[_11845 + mem[_11845]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11845 + ceil32(return_data.size) + ceil32(32 * mem[_11845 + mem[_11845]]) + 1
                                        mem[_11845 + ceil32(return_data.size)] = _12159
                                        require (32 * _12159) + _12009 + 32 <= return_data.size
                                        s = _11845 + ceil32(return_data.size) + 32
                                        idx = _11845 + _12009 + 32
                                        while idx < (32 * _12159) + _11845 + _12009 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12159:
                                            if idx >= mem[_11845 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17827 = mem[(32 * idx) + _11845 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17827))
                                            call address(_17827).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_10848] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11913 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12090 = mem[_11913]
                                        require mem[_11913] <= test266151307()
                                        require _11913 + mem[_11913] + 31 < _11913 + return_data.size
                                        _12218 = mem[_11913 + mem[_11913]]
                                        if mem[_11913 + mem[_11913]] > test266151307():
                                            revert with 0, 65
                                        if _11913 + ceil32(return_data.size) + ceil32(32 * mem[_11913 + mem[_11913]]) + 1 > test266151307() or ceil32(32 * mem[_11913 + mem[_11913]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11913 + ceil32(return_data.size) + ceil32(32 * mem[_11913 + mem[_11913]]) + 1
                                        mem[_11913 + ceil32(return_data.size)] = _12218
                                        require (32 * _12218) + _12090 + 32 <= return_data.size
                                        s = _11913 + ceil32(return_data.size) + 32
                                        idx = _11913 + _12090 + 32
                                        while idx < (32 * _12218) + _11913 + _12090 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12218:
                                            if idx >= mem[_11913 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17832 = mem[(32 * idx) + _11913 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17832))
                                            call address(_17832).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9816] == bool(mem[_9816])
                                _9948 = mem[_9816 + 128]
                                if mem[_9816 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10267 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10342 = mem[_10267]
                                    require mem[_10267] <= test266151307()
                                    require _10267 + mem[_10267] + 31 < _10267 + return_data.size
                                    _10392 = mem[_10267 + mem[_10267]]
                                    if mem[_10267 + mem[_10267]] > test266151307():
                                        revert with 0, 65
                                    if _10267 + ceil32(return_data.size) + ceil32(32 * mem[_10267 + mem[_10267]]) + 1 > test266151307() or ceil32(32 * mem[_10267 + mem[_10267]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10267 + ceil32(return_data.size) + ceil32(32 * mem[_10267 + mem[_10267]]) + 1
                                    mem[_10267 + ceil32(return_data.size)] = _10392
                                    require (32 * _10392) + _10342 + 32 <= return_data.size
                                    s = _10267 + ceil32(return_data.size) + 32
                                    idx = _10267 + _10342 + 32
                                    while idx < (32 * _10392) + _10267 + _10342 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10392:
                                        if idx >= mem[_10267 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17837 = mem[(32 * idx) + _10267 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17837))
                                        call address(_17837).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9816 + 128] and 10^18 > -1 / mem[_9816 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9816 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10519 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10605 = mem[_10519]
                                    require mem[_10519] == mem[_10519 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9948) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10605))
                                    staticcall address(_10605).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9948) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11155 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11155]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12160 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12277 = mem[_12160]
                                        require mem[_12160] <= test266151307()
                                        require _12160 + mem[_12160] + 31 < _12160 + return_data.size
                                        _12367 = mem[_12160 + mem[_12160]]
                                        if mem[_12160 + mem[_12160]] > test266151307():
                                            revert with 0, 65
                                        if _12160 + ceil32(return_data.size) + ceil32(32 * mem[_12160 + mem[_12160]]) + 1 > test266151307() or ceil32(32 * mem[_12160 + mem[_12160]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12160 + ceil32(return_data.size) + ceil32(32 * mem[_12160 + mem[_12160]]) + 1
                                        mem[_12160 + ceil32(return_data.size)] = _12367
                                        require (32 * _12367) + _12277 + 32 <= return_data.size
                                        s = _12160 + ceil32(return_data.size) + 32
                                        idx = _12160 + _12277 + 32
                                        while idx < (32 * _12367) + _12160 + _12277 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12367:
                                            if idx >= mem[_12160 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17842 = mem[(32 * idx) + _12160 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17842))
                                            call address(_17842).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11155] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12219 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12326 = mem[_12219]
                                        require mem[_12219] <= test266151307()
                                        require _12219 + mem[_12219] + 31 < _12219 + return_data.size
                                        _12408 = mem[_12219 + mem[_12219]]
                                        if mem[_12219 + mem[_12219]] > test266151307():
                                            revert with 0, 65
                                        if _12219 + ceil32(return_data.size) + ceil32(32 * mem[_12219 + mem[_12219]]) + 1 > test266151307() or ceil32(32 * mem[_12219 + mem[_12219]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12219 + ceil32(return_data.size) + ceil32(32 * mem[_12219 + mem[_12219]]) + 1
                                        mem[_12219 + ceil32(return_data.size)] = _12408
                                        require (32 * _12408) + _12326 + 32 <= return_data.size
                                        s = _12219 + ceil32(return_data.size) + 32
                                        idx = _12219 + _12326 + 32
                                        while idx < (32 * _12408) + _12219 + _12326 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12408:
                                            if idx >= mem[_12219 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17847 = mem[(32 * idx) + _12219 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17847))
                                            call address(_17847).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x3f5fc131 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9817 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9817] == bool(mem[_9817])
                                _9952 = mem[_9817 + 128]
                                if mem[_9817 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10268 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10343 = mem[_10268]
                                    require mem[_10268] <= test266151307()
                                    require _10268 + mem[_10268] + 31 < _10268 + return_data.size
                                    _10393 = mem[_10268 + mem[_10268]]
                                    if mem[_10268 + mem[_10268]] > test266151307():
                                        revert with 0, 65
                                    if _10268 + ceil32(return_data.size) + ceil32(32 * mem[_10268 + mem[_10268]]) + 1 > test266151307() or ceil32(32 * mem[_10268 + mem[_10268]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10268 + ceil32(return_data.size) + ceil32(32 * mem[_10268 + mem[_10268]]) + 1
                                    mem[_10268 + ceil32(return_data.size)] = _10393
                                    require (32 * _10393) + _10343 + 32 <= return_data.size
                                    s = _10268 + ceil32(return_data.size) + 32
                                    idx = _10268 + _10343 + 32
                                    while idx < (32 * _10393) + _10268 + _10343 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10393:
                                        if idx >= mem[_10268 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17852 = mem[(32 * idx) + _10268 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17852))
                                        call address(_17852).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9817 + 128] and 10^18 > -1 / mem[_9817 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9817 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10520 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10606 = mem[_10520]
                                    require mem[_10520] == mem[_10520 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9952) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10606))
                                    staticcall address(_10606).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9952) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11161 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11161]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12162 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12278 = mem[_12162]
                                        require mem[_12162] <= test266151307()
                                        require _12162 + mem[_12162] + 31 < _12162 + return_data.size
                                        _12368 = mem[_12162 + mem[_12162]]
                                        if mem[_12162 + mem[_12162]] > test266151307():
                                            revert with 0, 65
                                        if _12162 + ceil32(return_data.size) + ceil32(32 * mem[_12162 + mem[_12162]]) + 1 > test266151307() or ceil32(32 * mem[_12162 + mem[_12162]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12162 + ceil32(return_data.size) + ceil32(32 * mem[_12162 + mem[_12162]]) + 1
                                        mem[_12162 + ceil32(return_data.size)] = _12368
                                        require (32 * _12368) + _12278 + 32 <= return_data.size
                                        s = _12162 + ceil32(return_data.size) + 32
                                        idx = _12162 + _12278 + 32
                                        while idx < (32 * _12368) + _12162 + _12278 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12368:
                                            if idx >= mem[_12162 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17857 = mem[(32 * idx) + _12162 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17857))
                                            call address(_17857).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11161] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12220 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12327 = mem[_12220]
                                        require mem[_12220] <= test266151307()
                                        require _12220 + mem[_12220] + 31 < _12220 + return_data.size
                                        _12410 = mem[_12220 + mem[_12220]]
                                        if mem[_12220 + mem[_12220]] > test266151307():
                                            revert with 0, 65
                                        if _12220 + ceil32(return_data.size) + ceil32(32 * mem[_12220 + mem[_12220]]) + 1 > test266151307() or ceil32(32 * mem[_12220 + mem[_12220]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12220 + ceil32(return_data.size) + ceil32(32 * mem[_12220 + mem[_12220]]) + 1
                                        mem[_12220 + ceil32(return_data.size)] = _12410
                                        require (32 * _12410) + _12327 + 32 <= return_data.size
                                        s = _12220 + ceil32(return_data.size) + 32
                                        idx = _12220 + _12327 + 32
                                        while idx < (32 * _12410) + _12220 + _12327 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12410:
                                            if idx >= mem[_12220 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17862 = mem[(32 * idx) + _12220 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17862))
                                            call address(_17862).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9898] == bool(mem[_9898])
                                _10055 = mem[_9898 + 128]
                                if mem[_9898 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10394 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10497 = mem[_10394]
                                    require mem[_10394] <= test266151307()
                                    require _10394 + mem[_10394] + 31 < _10394 + return_data.size
                                    _10542 = mem[_10394 + mem[_10394]]
                                    if mem[_10394 + mem[_10394]] > test266151307():
                                        revert with 0, 65
                                    if _10394 + ceil32(return_data.size) + ceil32(32 * mem[_10394 + mem[_10394]]) + 1 > test266151307() or ceil32(32 * mem[_10394 + mem[_10394]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10394 + ceil32(return_data.size) + ceil32(32 * mem[_10394 + mem[_10394]]) + 1
                                    mem[_10394 + ceil32(return_data.size)] = _10542
                                    require (32 * _10542) + _10497 + 32 <= return_data.size
                                    s = _10394 + ceil32(return_data.size) + 32
                                    idx = _10394 + _10497 + 32
                                    while idx < (32 * _10542) + _10394 + _10497 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10542:
                                        if idx >= mem[_10394 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17867 = mem[(32 * idx) + _10394 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17867))
                                        call address(_17867).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9898 + 128] and 10^18 > -1 / mem[_9898 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9898 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10728 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10861 = mem[_10728]
                                    require mem[_10728] == mem[_10728 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _10055) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10861))
                                    staticcall address(_10861).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _10055) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11382 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11382]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12369 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12451 = mem[_12369]
                                        require mem[_12369] <= test266151307()
                                        require _12369 + mem[_12369] + 31 < _12369 + return_data.size
                                        _12509 = mem[_12369 + mem[_12369]]
                                        if mem[_12369 + mem[_12369]] > test266151307():
                                            revert with 0, 65
                                        if _12369 + ceil32(return_data.size) + ceil32(32 * mem[_12369 + mem[_12369]]) + 1 > test266151307() or ceil32(32 * mem[_12369 + mem[_12369]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12369 + ceil32(return_data.size) + ceil32(32 * mem[_12369 + mem[_12369]]) + 1
                                        mem[_12369 + ceil32(return_data.size)] = _12509
                                        require (32 * _12509) + _12451 + 32 <= return_data.size
                                        s = _12369 + ceil32(return_data.size) + 32
                                        idx = _12369 + _12451 + 32
                                        while idx < (32 * _12509) + _12369 + _12451 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12509:
                                            if idx >= mem[_12369 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17872 = mem[(32 * idx) + _12369 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17872))
                                            call address(_17872).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11382] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12411 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12482 = mem[_12411]
                                        require mem[_12411] <= test266151307()
                                        require _12411 + mem[_12411] + 31 < _12411 + return_data.size
                                        _12561 = mem[_12411 + mem[_12411]]
                                        if mem[_12411 + mem[_12411]] > test266151307():
                                            revert with 0, 65
                                        if _12411 + ceil32(return_data.size) + ceil32(32 * mem[_12411 + mem[_12411]]) + 1 > test266151307() or ceil32(32 * mem[_12411 + mem[_12411]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12411 + ceil32(return_data.size) + ceil32(32 * mem[_12411 + mem[_12411]]) + 1
                                        mem[_12411 + ceil32(return_data.size)] = _12561
                                        require (32 * _12561) + _12482 + 32 <= return_data.size
                                        s = _12411 + ceil32(return_data.size) + 32
                                        idx = _12411 + _12482 + 32
                                        while idx < (32 * _12561) + _12411 + _12482 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12561:
                                            if idx >= mem[_12411 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _17877 = mem[(32 * idx) + _12411 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_17877))
                                            call address(_17877).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        if not msg.sender:
                            revert with 0, 'burn-from-the-zero-address'
                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            revert with 0, 'burn-amount-exceeds-balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg1 + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                        if totalSupply < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        totalSupply = totalSupply - arg1 + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                        emit 0xfeddf252: (arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)), msg.sender, 0
                        if not balanceOf[address(msg.sender)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xf2d5d56b with:
                             gas gas_remaining wei
                            args address(arg2), arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x4700a5c5: arg1, (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18, msg.sender, arg2
        else:
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'amount-gt-unlocked'
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x61d027b3 with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(controllerAddress)
            call controllerAddress.0xe941fa78 with:
                 gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xdde3ab95 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(10 * ceil32(return_data.size)) + 96 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[128] <= 0:
                    if 0 < arg1:
                        revert with 0, 'not-enough-free-balance'
                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                        revert with 0, 17
                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                        revert with 0, 'min-deposit-time-have-not-passed'
                    mem[(11 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _422 = mem[(11 * ceil32(return_data.size)) + 96]
                    require mem[(11 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                    _461 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (12 * ceil32(return_data.size)) + ceil32(32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _461) + _422 + 32 <= return_data.size
                    s = (12 * ceil32(return_data.size)) + 128
                    idx = (11 * ceil32(return_data.size)) + _422 + 128
                    while idx < (32 * _461) + (11 * ceil32(return_data.size)) + _422 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _461:
                        if idx >= mem[(12 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9347 = mem[(32 * idx) + (12 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(_9347))
                        call address(_9347).0x1b30f0c0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender
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
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(12 * ceil32(return_data.size)) + 100] = this.address
                    mem[(12 * ceil32(return_data.size)) + 132] = (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x57f1915d with:
                            gas gas_remaining wei
                           args address(this.address), (10^18 * ext_call.return_data[128]) + uint255(stor60.field_1) / collateralizationRatio
                    mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 'not-enough-free-balance'
                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                            revert with 0, 17
                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                            revert with 0, 'min-deposit-time-have-not-passed'
                        mem[(13 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1271 = mem[(13 * ceil32(return_data.size)) + 96]
                        require mem[(13 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                        _1351 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _1351) + _1271 + 32 <= return_data.size
                        s = (14 * ceil32(return_data.size)) + 128
                        idx = (13 * ceil32(return_data.size)) + _1271 + 128
                        while idx < (32 * _1351) + (13 * ceil32(return_data.size)) + _1271 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _1351:
                            if idx >= mem[(14 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9352 = mem[(32 * idx) + (14 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_9352))
                            call address(_9352).0x1b30f0c0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if ext_call.return_data[0] < arg1:
                            revert with 0, 'not-enough-free-balance'
                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                            revert with 0, 17
                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                            revert with 0, 'min-deposit-time-have-not-passed'
                        mem[(13 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1314 = mem[(13 * ceil32(return_data.size)) + 96]
                        require mem[(13 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                        _1400 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _1400) + _1314 + 32 <= return_data.size
                        s = (14 * ceil32(return_data.size)) + 128
                        idx = (13 * ceil32(return_data.size)) + _1314 + 128
                        while idx < (32 * _1400) + (13 * ceil32(return_data.size)) + _1314 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _1400:
                            if idx >= mem[(14 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9357 = mem[(32 * idx) + (14 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(_9357))
                            call address(_9357).0x1b30f0c0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                if not msg.sender:
                    revert with 0, 'burn-from-the-zero-address'
                if balanceOf[address(msg.sender)] < arg1:
                    revert with 0, 'burn-amount-exceeds-balance'
                balanceOf[address(msg.sender)] -= arg1
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                emit 0xfeddf252: arg1, msg.sender, 0
                if not balanceOf[address(msg.sender)]:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x275038d0 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xf2d5d56b with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x4700a5c5: arg1, 0, msg.sender, arg2
            else:
                if not arg1:
                    mem[(10 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0x3605b51b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _235 = mem[(10 * ceil32(return_data.size)) + 96]
                    require mem[(10 * ceil32(return_data.size)) + 96] <= test266151307()
                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                    _249 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97
                    mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                    require (32 * _249) + _235 + 32 <= return_data.size
                    s = (11 * ceil32(return_data.size)) + 128
                    idx = (10 * ceil32(return_data.size)) + _235 + 128
                    while idx < (32 * _249) + (10 * ceil32(return_data.size)) + _235 + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < _249:
                        if idx >= mem[(11 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _9361 = mem[(32 * idx) + (11 * ceil32(return_data.size)) + 128]
                        mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(ext_call.return_data[0])
                        require ext_code.size(address(_9361))
                        call address(_9361).0xb17b23a0 with:
                             gas gas_remaining wei
                            args this.address, msg.sender, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not msg.sender:
                        revert with 0, 'transfer-from-the-zero-address'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'transfer-to-the-zero-address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'transfer-amount-exceeds-balance'
                    if balanceOf[address(ext_call.return_data[0])] > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                    if balanceOf[address(ext_call.return_data[0])] < 0:
                        revert with 0, 17
                    if balanceOf[address(ext_call.return_data[0])]:
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9768 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9768] == bool(mem[_9768])
                            _9858 = mem[_9768 + 128]
                            if mem[_9768 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10143 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10212 = mem[_10143]
                                require mem[_10143] <= test266151307()
                                require _10143 + mem[_10143] + 31 < _10143 + return_data.size
                                _10272 = mem[_10143 + mem[_10143]]
                                if mem[_10143 + mem[_10143]] > test266151307():
                                    revert with 0, 65
                                if _10143 + ceil32(return_data.size) + ceil32(32 * mem[_10143 + mem[_10143]]) + 1 > test266151307() or ceil32(32 * mem[_10143 + mem[_10143]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10143 + ceil32(return_data.size) + ceil32(32 * mem[_10143 + mem[_10143]]) + 1
                                mem[_10143 + ceil32(return_data.size)] = _10272
                                require (32 * _10272) + _10212 + 32 <= return_data.size
                                s = _10143 + ceil32(return_data.size) + 32
                                idx = _10143 + _10212 + 32
                                while idx < (32 * _10272) + _10143 + _10212 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10272:
                                    if idx >= mem[_10143 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17942 = mem[(32 * idx) + _10143 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17942))
                                    call address(_17942).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9768 + 128] and 10^18 > -1 / mem[_9768 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9768 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10461 = mem[_10374]
                                require mem[_10374] == mem[_10374 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9858) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10461))
                                staticcall address(_10461).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9858) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10886 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_10886]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11853 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12027 = mem[_11853]
                                    require mem[_11853] <= test266151307()
                                    require _11853 + mem[_11853] + 31 < _11853 + return_data.size
                                    _12171 = mem[_11853 + mem[_11853]]
                                    if mem[_11853 + mem[_11853]] > test266151307():
                                        revert with 0, 65
                                    if _11853 + ceil32(return_data.size) + ceil32(32 * mem[_11853 + mem[_11853]]) + 1 > test266151307() or ceil32(32 * mem[_11853 + mem[_11853]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11853 + ceil32(return_data.size) + ceil32(32 * mem[_11853 + mem[_11853]]) + 1
                                    mem[_11853 + ceil32(return_data.size)] = _12171
                                    require (32 * _12171) + _12027 + 32 <= return_data.size
                                    s = _11853 + ceil32(return_data.size) + 32
                                    idx = _11853 + _12027 + 32
                                    while idx < (32 * _12171) + _11853 + _12027 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12171:
                                        if idx >= mem[_11853 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17947 = mem[(32 * idx) + _11853 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17947))
                                        call address(_17947).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_10886] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11937 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12108 = mem[_11937]
                                    require mem[_11937] <= test266151307()
                                    require _11937 + mem[_11937] + 31 < _11937 + return_data.size
                                    _12232 = mem[_11937 + mem[_11937]]
                                    if mem[_11937 + mem[_11937]] > test266151307():
                                        revert with 0, 65
                                    if _11937 + ceil32(return_data.size) + ceil32(32 * mem[_11937 + mem[_11937]]) + 1 > test266151307() or ceil32(32 * mem[_11937 + mem[_11937]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _11937 + ceil32(return_data.size) + ceil32(32 * mem[_11937 + mem[_11937]]) + 1
                                    mem[_11937 + ceil32(return_data.size)] = _12232
                                    require (32 * _12232) + _12108 + 32 <= return_data.size
                                    s = _11937 + ceil32(return_data.size) + 32
                                    idx = _11937 + _12108 + 32
                                    while idx < (32 * _12232) + _11937 + _12108 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12232:
                                        if idx >= mem[_11937 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17952 = mem[(32 * idx) + _11937 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17952))
                                        call address(_17952).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9822] == bool(mem[_9822])
                            _9968 = mem[_9822 + 128]
                            if mem[_9822 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10273 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10350 = mem[_10273]
                                require mem[_10273] <= test266151307()
                                require _10273 + mem[_10273] + 31 < _10273 + return_data.size
                                _10398 = mem[_10273 + mem[_10273]]
                                if mem[_10273 + mem[_10273]] > test266151307():
                                    revert with 0, 65
                                if _10273 + ceil32(return_data.size) + ceil32(32 * mem[_10273 + mem[_10273]]) + 1 > test266151307() or ceil32(32 * mem[_10273 + mem[_10273]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10273 + ceil32(return_data.size) + ceil32(32 * mem[_10273 + mem[_10273]]) + 1
                                mem[_10273 + ceil32(return_data.size)] = _10398
                                require (32 * _10398) + _10350 + 32 <= return_data.size
                                s = _10273 + ceil32(return_data.size) + 32
                                idx = _10273 + _10350 + 32
                                while idx < (32 * _10398) + _10273 + _10350 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10398:
                                    if idx >= mem[_10273 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17957 = mem[(32 * idx) + _10273 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17957))
                                    call address(_17957).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9822 + 128] and 10^18 > -1 / mem[_9822 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9822 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10525 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10629 = mem[_10525]
                                require mem[_10525] == mem[_10525 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9968) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10629))
                                staticcall address(_10629).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9968) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11193 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11193]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12172 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12289 = mem[_12172]
                                    require mem[_12172] <= test266151307()
                                    require _12172 + mem[_12172] + 31 < _12172 + return_data.size
                                    _12375 = mem[_12172 + mem[_12172]]
                                    if mem[_12172 + mem[_12172]] > test266151307():
                                        revert with 0, 65
                                    if _12172 + ceil32(return_data.size) + ceil32(32 * mem[_12172 + mem[_12172]]) + 1 > test266151307() or ceil32(32 * mem[_12172 + mem[_12172]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12172 + ceil32(return_data.size) + ceil32(32 * mem[_12172 + mem[_12172]]) + 1
                                    mem[_12172 + ceil32(return_data.size)] = _12375
                                    require (32 * _12375) + _12289 + 32 <= return_data.size
                                    s = _12172 + ceil32(return_data.size) + 32
                                    idx = _12172 + _12289 + 32
                                    while idx < (32 * _12375) + _12172 + _12289 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12375:
                                        if idx >= mem[_12172 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17962 = mem[(32 * idx) + _12172 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17962))
                                        call address(_17962).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11193] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12233 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12336 = mem[_12233]
                                    require mem[_12233] <= test266151307()
                                    require _12233 + mem[_12233] + 31 < _12233 + return_data.size
                                    _12418 = mem[_12233 + mem[_12233]]
                                    if mem[_12233 + mem[_12233]] > test266151307():
                                        revert with 0, 65
                                    if _12233 + ceil32(return_data.size) + ceil32(32 * mem[_12233 + mem[_12233]]) + 1 > test266151307() or ceil32(32 * mem[_12233 + mem[_12233]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12233 + ceil32(return_data.size) + ceil32(32 * mem[_12233 + mem[_12233]]) + 1
                                    mem[_12233 + ceil32(return_data.size)] = _12418
                                    require (32 * _12418) + _12336 + 32 <= return_data.size
                                    s = _12233 + ceil32(return_data.size) + 32
                                    idx = _12233 + _12336 + 32
                                    while idx < (32 * _12418) + _12233 + _12336 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12418:
                                        if idx >= mem[_12233 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17967 = mem[(32 * idx) + _12233 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17967))
                                        call address(_17967).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    else:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x3f5fc131 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = msg.sender
                        mem[32] = 52
                        if balanceOf[address(msg.sender)]:
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9823] == bool(mem[_9823])
                            _9972 = mem[_9823 + 128]
                            if mem[_9823 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10274 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10351 = mem[_10274]
                                require mem[_10274] <= test266151307()
                                require _10274 + mem[_10274] + 31 < _10274 + return_data.size
                                _10399 = mem[_10274 + mem[_10274]]
                                if mem[_10274 + mem[_10274]] > test266151307():
                                    revert with 0, 65
                                if _10274 + ceil32(return_data.size) + ceil32(32 * mem[_10274 + mem[_10274]]) + 1 > test266151307() or ceil32(32 * mem[_10274 + mem[_10274]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10274 + ceil32(return_data.size) + ceil32(32 * mem[_10274 + mem[_10274]]) + 1
                                mem[_10274 + ceil32(return_data.size)] = _10399
                                require (32 * _10399) + _10351 + 32 <= return_data.size
                                s = _10274 + ceil32(return_data.size) + 32
                                idx = _10274 + _10351 + 32
                                while idx < (32 * _10399) + _10274 + _10351 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10399:
                                    if idx >= mem[_10274 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17972 = mem[(32 * idx) + _10274 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17972))
                                    call address(_17972).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9823 + 128] and 10^18 > -1 / mem[_9823 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9823 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10526 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10630 = mem[_10526]
                                require mem[_10526] == mem[_10526 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _9972) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10630))
                                staticcall address(_10630).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _9972) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11199 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11199]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12174 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12290 = mem[_12174]
                                    require mem[_12174] <= test266151307()
                                    require _12174 + mem[_12174] + 31 < _12174 + return_data.size
                                    _12376 = mem[_12174 + mem[_12174]]
                                    if mem[_12174 + mem[_12174]] > test266151307():
                                        revert with 0, 65
                                    if _12174 + ceil32(return_data.size) + ceil32(32 * mem[_12174 + mem[_12174]]) + 1 > test266151307() or ceil32(32 * mem[_12174 + mem[_12174]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12174 + ceil32(return_data.size) + ceil32(32 * mem[_12174 + mem[_12174]]) + 1
                                    mem[_12174 + ceil32(return_data.size)] = _12376
                                    require (32 * _12376) + _12290 + 32 <= return_data.size
                                    s = _12174 + ceil32(return_data.size) + 32
                                    idx = _12174 + _12290 + 32
                                    while idx < (32 * _12376) + _12174 + _12290 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12376:
                                        if idx >= mem[_12174 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17977 = mem[(32 * idx) + _12174 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17977))
                                        call address(_17977).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11199] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12234 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12337 = mem[_12234]
                                    require mem[_12234] <= test266151307()
                                    require _12234 + mem[_12234] + 31 < _12234 + return_data.size
                                    _12420 = mem[_12234 + mem[_12234]]
                                    if mem[_12234 + mem[_12234]] > test266151307():
                                        revert with 0, 65
                                    if _12234 + ceil32(return_data.size) + ceil32(32 * mem[_12234 + mem[_12234]]) + 1 > test266151307() or ceil32(32 * mem[_12234 + mem[_12234]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12234 + ceil32(return_data.size) + ceil32(32 * mem[_12234 + mem[_12234]]) + 1
                                    mem[_12234 + ceil32(return_data.size)] = _12420
                                    require (32 * _12420) + _12337 + 32 <= return_data.size
                                    s = _12234 + ceil32(return_data.size) + 32
                                    idx = _12234 + _12337 + 32
                                    while idx < (32 * _12420) + _12234 + _12337 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12420:
                                        if idx >= mem[_12234 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17982 = mem[(32 * idx) + _12234 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17982))
                                        call address(_17982).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < 0:
                                revert with 0, 17
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xdde3ab95 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 160
                            require mem[_9900] == bool(mem[_9900])
                            _10073 = mem[_9900 + 128]
                            if mem[_9900 + 128] <= 0:
                                if 0 < arg1:
                                    revert with 0, 'not-enough-free-balance'
                                mem[0] = msg.sender
                                mem[32] = 62
                                if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                    revert with 0, 17
                                if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                    revert with 0, 'min-deposit-time-have-not-passed'
                                mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0x3605b51b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10400 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10501 = mem[_10400]
                                require mem[_10400] <= test266151307()
                                require _10400 + mem[_10400] + 31 < _10400 + return_data.size
                                _10546 = mem[_10400 + mem[_10400]]
                                if mem[_10400 + mem[_10400]] > test266151307():
                                    revert with 0, 65
                                if _10400 + ceil32(return_data.size) + ceil32(32 * mem[_10400 + mem[_10400]]) + 1 > test266151307() or ceil32(32 * mem[_10400 + mem[_10400]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _10400 + ceil32(return_data.size) + ceil32(32 * mem[_10400 + mem[_10400]]) + 1
                                mem[_10400 + ceil32(return_data.size)] = _10546
                                require (32 * _10546) + _10501 + 32 <= return_data.size
                                s = _10400 + ceil32(return_data.size) + 32
                                idx = _10400 + _10501 + 32
                                while idx < (32 * _10546) + _10400 + _10501 + 32:
                                    require mem[idx] == mem[idx + 12 len 20]
                                    mem[s] = mem[idx]
                                    s = s + 32
                                    idx = idx + 32
                                    continue 
                                idx = 0
                                while idx < _10546:
                                    if idx >= mem[_10400 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _17987 = mem[(32 * idx) + _10400 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(_17987))
                                    call address(_17987).0x1b30f0c0 with:
                                         gas gas_remaining wei
                                        args this.address, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if mem[_9900 + 128] and 10^18 > -1 / mem[_9900 + 128]:
                                    revert with 0, 17
                                if 10^18 * mem[_9900 + 128] > !uint255(stor60.field_1):
                                    revert with 0, 17
                                if not collateralizationRatio:
                                    revert with 0, 18
                                mem[0] = msg.sender
                                mem[32] = 52
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xeaada382 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _10738 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _10899 = mem[_10738]
                                require mem[_10738] == mem[_10738 + 12 len 20]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^18 * _10073) + uint255(stor60.field_1) / collateralizationRatio
                                require ext_code.size(address(_10899))
                                staticcall address(_10899).0x57f1915d with:
                                        gas gas_remaining wei
                                       args address(this.address), (10^18 * _10073) + uint255(stor60.field_1) / collateralizationRatio
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11398 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if balanceOf[address(msg.sender)] < mem[_11398]:
                                    if balanceOf[address(msg.sender)] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12377 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12459 = mem[_12377]
                                    require mem[_12377] <= test266151307()
                                    require _12377 + mem[_12377] + 31 < _12377 + return_data.size
                                    _12515 = mem[_12377 + mem[_12377]]
                                    if mem[_12377 + mem[_12377]] > test266151307():
                                        revert with 0, 65
                                    if _12377 + ceil32(return_data.size) + ceil32(32 * mem[_12377 + mem[_12377]]) + 1 > test266151307() or ceil32(32 * mem[_12377 + mem[_12377]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12377 + ceil32(return_data.size) + ceil32(32 * mem[_12377 + mem[_12377]]) + 1
                                    mem[_12377 + ceil32(return_data.size)] = _12515
                                    require (32 * _12515) + _12459 + 32 <= return_data.size
                                    s = _12377 + ceil32(return_data.size) + 32
                                    idx = _12377 + _12459 + 32
                                    while idx < (32 * _12515) + _12377 + _12459 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12515:
                                        if idx >= mem[_12377 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17992 = mem[(32 * idx) + _12377 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17992))
                                        call address(_17992).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_11398] < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12421 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _12488 = mem[_12421]
                                    require mem[_12421] <= test266151307()
                                    require _12421 + mem[_12421] + 31 < _12421 + return_data.size
                                    _12577 = mem[_12421 + mem[_12421]]
                                    if mem[_12421 + mem[_12421]] > test266151307():
                                        revert with 0, 65
                                    if _12421 + ceil32(return_data.size) + ceil32(32 * mem[_12421 + mem[_12421]]) + 1 > test266151307() or ceil32(32 * mem[_12421 + mem[_12421]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _12421 + ceil32(return_data.size) + ceil32(32 * mem[_12421 + mem[_12421]]) + 1
                                    mem[_12421 + ceil32(return_data.size)] = _12577
                                    require (32 * _12577) + _12488 + 32 <= return_data.size
                                    s = _12421 + ceil32(return_data.size) + 32
                                    idx = _12421 + _12488 + 32
                                    while idx < (32 * _12577) + _12421 + _12488 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _12577:
                                        if idx >= mem[_12421 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _17997 = mem[(32 * idx) + _12421 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_17997))
                                        call address(_17997).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                    if not msg.sender:
                        revert with 0, 'burn-from-the-zero-address'
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 'burn-amount-exceeds-balance'
                    balanceOf[address(msg.sender)] -= arg1
                    if totalSupply < arg1:
                        revert with 0, 17
                    totalSupply -= arg1
                    emit 0xfeddf252: arg1, msg.sender, 0
                    if not balanceOf[address(msg.sender)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x275038d0 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xf2d5d56b with:
                         gas gas_remaining wei
                        args address(arg2), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x4700a5c5: arg1, 0, msg.sender, arg2
                else:
                    if not ext_call.return_data[0]:
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _243 = mem[(10 * ceil32(return_data.size)) + 96]
                        require mem[(10 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _256 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _256) + _243 + 32 <= return_data.size
                        s = (11 * ceil32(return_data.size)) + 128
                        idx = (10 * ceil32(return_data.size)) + _243 + 128
                        while idx < (32 * _256) + (10 * ceil32(return_data.size)) + _243 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _256:
                            if idx >= mem[(11 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9369 = mem[(32 * idx) + (11 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = address(ext_call.return_data[0])
                            require ext_code.size(address(_9369))
                            call address(_9369).0xb17b23a0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not msg.sender:
                            revert with 0, 'transfer-from-the-zero-address'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'transfer-to-the-zero-address'
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'transfer-amount-exceeds-balance'
                        if balanceOf[address(ext_call.return_data[0])] > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                        if balanceOf[address(ext_call.return_data[0])] < 0:
                            revert with 0, 17
                        if balanceOf[address(ext_call.return_data[0])]:
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9774] == bool(mem[_9774])
                                _9866 = mem[_9774 + 128]
                                if mem[_9774 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10145 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10222 = mem[_10145]
                                    require mem[_10145] <= test266151307()
                                    require _10145 + mem[_10145] + 31 < _10145 + return_data.size
                                    _10278 = mem[_10145 + mem[_10145]]
                                    if mem[_10145 + mem[_10145]] > test266151307():
                                        revert with 0, 65
                                    if _10145 + ceil32(return_data.size) + ceil32(32 * mem[_10145 + mem[_10145]]) + 1 > test266151307() or ceil32(32 * mem[_10145 + mem[_10145]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10145 + ceil32(return_data.size) + ceil32(32 * mem[_10145 + mem[_10145]]) + 1
                                    mem[_10145 + ceil32(return_data.size)] = _10278
                                    require (32 * _10278) + _10222 + 32 <= return_data.size
                                    s = _10145 + ceil32(return_data.size) + 32
                                    idx = _10145 + _10222 + 32
                                    while idx < (32 * _10278) + _10145 + _10222 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10278:
                                        if idx >= mem[_10145 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18062 = mem[(32 * idx) + _10145 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18062))
                                        call address(_18062).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9774 + 128] and 10^18 > -1 / mem[_9774 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9774 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10378 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10479 = mem[_10378]
                                    require mem[_10378] == mem[_10378 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9866) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10479))
                                    staticcall address(_10479).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9866) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10924 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_10924]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11861 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12045 = mem[_11861]
                                        require mem[_11861] <= test266151307()
                                        require _11861 + mem[_11861] + 31 < _11861 + return_data.size
                                        _12183 = mem[_11861 + mem[_11861]]
                                        if mem[_11861 + mem[_11861]] > test266151307():
                                            revert with 0, 65
                                        if _11861 + ceil32(return_data.size) + ceil32(32 * mem[_11861 + mem[_11861]]) + 1 > test266151307() or ceil32(32 * mem[_11861 + mem[_11861]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11861 + ceil32(return_data.size) + ceil32(32 * mem[_11861 + mem[_11861]]) + 1
                                        mem[_11861 + ceil32(return_data.size)] = _12183
                                        require (32 * _12183) + _12045 + 32 <= return_data.size
                                        s = _11861 + ceil32(return_data.size) + 32
                                        idx = _11861 + _12045 + 32
                                        while idx < (32 * _12183) + _11861 + _12045 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12183:
                                            if idx >= mem[_11861 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18067 = mem[(32 * idx) + _11861 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18067))
                                            call address(_18067).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_10924] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11961 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12126 = mem[_11961]
                                        require mem[_11961] <= test266151307()
                                        require _11961 + mem[_11961] + 31 < _11961 + return_data.size
                                        _12246 = mem[_11961 + mem[_11961]]
                                        if mem[_11961 + mem[_11961]] > test266151307():
                                            revert with 0, 65
                                        if _11961 + ceil32(return_data.size) + ceil32(32 * mem[_11961 + mem[_11961]]) + 1 > test266151307() or ceil32(32 * mem[_11961 + mem[_11961]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11961 + ceil32(return_data.size) + ceil32(32 * mem[_11961 + mem[_11961]]) + 1
                                        mem[_11961 + ceil32(return_data.size)] = _12246
                                        require (32 * _12246) + _12126 + 32 <= return_data.size
                                        s = _11961 + ceil32(return_data.size) + 32
                                        idx = _11961 + _12126 + 32
                                        while idx < (32 * _12246) + _11961 + _12126 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12246:
                                            if idx >= mem[_11961 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18072 = mem[(32 * idx) + _11961 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18072))
                                            call address(_18072).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9828] == bool(mem[_9828])
                                _9988 = mem[_9828 + 128]
                                if mem[_9828 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10279 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10358 = mem[_10279]
                                    require mem[_10279] <= test266151307()
                                    require _10279 + mem[_10279] + 31 < _10279 + return_data.size
                                    _10404 = mem[_10279 + mem[_10279]]
                                    if mem[_10279 + mem[_10279]] > test266151307():
                                        revert with 0, 65
                                    if _10279 + ceil32(return_data.size) + ceil32(32 * mem[_10279 + mem[_10279]]) + 1 > test266151307() or ceil32(32 * mem[_10279 + mem[_10279]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10279 + ceil32(return_data.size) + ceil32(32 * mem[_10279 + mem[_10279]]) + 1
                                    mem[_10279 + ceil32(return_data.size)] = _10404
                                    require (32 * _10404) + _10358 + 32 <= return_data.size
                                    s = _10279 + ceil32(return_data.size) + 32
                                    idx = _10279 + _10358 + 32
                                    while idx < (32 * _10404) + _10279 + _10358 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10404:
                                        if idx >= mem[_10279 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18077 = mem[(32 * idx) + _10279 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18077))
                                        call address(_18077).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9828 + 128] and 10^18 > -1 / mem[_9828 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9828 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10531 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10653 = mem[_10531]
                                    require mem[_10531] == mem[_10531 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9988) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10653))
                                    staticcall address(_10653).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9988) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11231 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11231]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12184 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12301 = mem[_12184]
                                        require mem[_12184] <= test266151307()
                                        require _12184 + mem[_12184] + 31 < _12184 + return_data.size
                                        _12383 = mem[_12184 + mem[_12184]]
                                        if mem[_12184 + mem[_12184]] > test266151307():
                                            revert with 0, 65
                                        if _12184 + ceil32(return_data.size) + ceil32(32 * mem[_12184 + mem[_12184]]) + 1 > test266151307() or ceil32(32 * mem[_12184 + mem[_12184]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12184 + ceil32(return_data.size) + ceil32(32 * mem[_12184 + mem[_12184]]) + 1
                                        mem[_12184 + ceil32(return_data.size)] = _12383
                                        require (32 * _12383) + _12301 + 32 <= return_data.size
                                        s = _12184 + ceil32(return_data.size) + 32
                                        idx = _12184 + _12301 + 32
                                        while idx < (32 * _12383) + _12184 + _12301 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12383:
                                            if idx >= mem[_12184 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18082 = mem[(32 * idx) + _12184 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18082))
                                            call address(_18082).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11231] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12247 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12346 = mem[_12247]
                                        require mem[_12247] <= test266151307()
                                        require _12247 + mem[_12247] + 31 < _12247 + return_data.size
                                        _12428 = mem[_12247 + mem[_12247]]
                                        if mem[_12247 + mem[_12247]] > test266151307():
                                            revert with 0, 65
                                        if _12247 + ceil32(return_data.size) + ceil32(32 * mem[_12247 + mem[_12247]]) + 1 > test266151307() or ceil32(32 * mem[_12247 + mem[_12247]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12247 + ceil32(return_data.size) + ceil32(32 * mem[_12247 + mem[_12247]]) + 1
                                        mem[_12247 + ceil32(return_data.size)] = _12428
                                        require (32 * _12428) + _12346 + 32 <= return_data.size
                                        s = _12247 + ceil32(return_data.size) + 32
                                        idx = _12247 + _12346 + 32
                                        while idx < (32 * _12428) + _12247 + _12346 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12428:
                                            if idx >= mem[_12247 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18087 = mem[(32 * idx) + _12247 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18087))
                                            call address(_18087).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x3f5fc131 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9829] == bool(mem[_9829])
                                _9992 = mem[_9829 + 128]
                                if mem[_9829 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10280 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10359 = mem[_10280]
                                    require mem[_10280] <= test266151307()
                                    require _10280 + mem[_10280] + 31 < _10280 + return_data.size
                                    _10405 = mem[_10280 + mem[_10280]]
                                    if mem[_10280 + mem[_10280]] > test266151307():
                                        revert with 0, 65
                                    if _10280 + ceil32(return_data.size) + ceil32(32 * mem[_10280 + mem[_10280]]) + 1 > test266151307() or ceil32(32 * mem[_10280 + mem[_10280]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10280 + ceil32(return_data.size) + ceil32(32 * mem[_10280 + mem[_10280]]) + 1
                                    mem[_10280 + ceil32(return_data.size)] = _10405
                                    require (32 * _10405) + _10359 + 32 <= return_data.size
                                    s = _10280 + ceil32(return_data.size) + 32
                                    idx = _10280 + _10359 + 32
                                    while idx < (32 * _10405) + _10280 + _10359 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10405:
                                        if idx >= mem[_10280 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18092 = mem[(32 * idx) + _10280 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18092))
                                        call address(_18092).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9829 + 128] and 10^18 > -1 / mem[_9829 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9829 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10532 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10654 = mem[_10532]
                                    require mem[_10532] == mem[_10532 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9992) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10654))
                                    staticcall address(_10654).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9992) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11237 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11237]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12186 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12302 = mem[_12186]
                                        require mem[_12186] <= test266151307()
                                        require _12186 + mem[_12186] + 31 < _12186 + return_data.size
                                        _12384 = mem[_12186 + mem[_12186]]
                                        if mem[_12186 + mem[_12186]] > test266151307():
                                            revert with 0, 65
                                        if _12186 + ceil32(return_data.size) + ceil32(32 * mem[_12186 + mem[_12186]]) + 1 > test266151307() or ceil32(32 * mem[_12186 + mem[_12186]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12186 + ceil32(return_data.size) + ceil32(32 * mem[_12186 + mem[_12186]]) + 1
                                        mem[_12186 + ceil32(return_data.size)] = _12384
                                        require (32 * _12384) + _12302 + 32 <= return_data.size
                                        s = _12186 + ceil32(return_data.size) + 32
                                        idx = _12186 + _12302 + 32
                                        while idx < (32 * _12384) + _12186 + _12302 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12384:
                                            if idx >= mem[_12186 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18097 = mem[(32 * idx) + _12186 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18097))
                                            call address(_18097).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11237] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12248 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12347 = mem[_12248]
                                        require mem[_12248] <= test266151307()
                                        require _12248 + mem[_12248] + 31 < _12248 + return_data.size
                                        _12430 = mem[_12248 + mem[_12248]]
                                        if mem[_12248 + mem[_12248]] > test266151307():
                                            revert with 0, 65
                                        if _12248 + ceil32(return_data.size) + ceil32(32 * mem[_12248 + mem[_12248]]) + 1 > test266151307() or ceil32(32 * mem[_12248 + mem[_12248]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12248 + ceil32(return_data.size) + ceil32(32 * mem[_12248 + mem[_12248]]) + 1
                                        mem[_12248 + ceil32(return_data.size)] = _12430
                                        require (32 * _12430) + _12347 + 32 <= return_data.size
                                        s = _12248 + ceil32(return_data.size) + 32
                                        idx = _12248 + _12347 + 32
                                        while idx < (32 * _12430) + _12248 + _12347 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12430:
                                            if idx >= mem[_12248 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18102 = mem[(32 * idx) + _12248 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18102))
                                            call address(_18102).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < 0:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9902 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9902] == bool(mem[_9902])
                                _10091 = mem[_9902 + 128]
                                if mem[_9902 + 128] <= 0:
                                    if 0 < arg1:
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10406 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10505 = mem[_10406]
                                    require mem[_10406] <= test266151307()
                                    require _10406 + mem[_10406] + 31 < _10406 + return_data.size
                                    _10550 = mem[_10406 + mem[_10406]]
                                    if mem[_10406 + mem[_10406]] > test266151307():
                                        revert with 0, 65
                                    if _10406 + ceil32(return_data.size) + ceil32(32 * mem[_10406 + mem[_10406]]) + 1 > test266151307() or ceil32(32 * mem[_10406 + mem[_10406]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10406 + ceil32(return_data.size) + ceil32(32 * mem[_10406 + mem[_10406]]) + 1
                                    mem[_10406 + ceil32(return_data.size)] = _10550
                                    require (32 * _10550) + _10505 + 32 <= return_data.size
                                    s = _10406 + ceil32(return_data.size) + 32
                                    idx = _10406 + _10505 + 32
                                    while idx < (32 * _10550) + _10406 + _10505 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10550:
                                        if idx >= mem[_10406 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18107 = mem[(32 * idx) + _10406 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18107))
                                        call address(_18107).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9902 + 128] and 10^18 > -1 / mem[_9902 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9902 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10748 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10937 = mem[_10748]
                                    require mem[_10748] == mem[_10748 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _10091) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10937))
                                    staticcall address(_10937).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _10091) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11414 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11414]:
                                        if balanceOf[address(msg.sender)] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12385 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12467 = mem[_12385]
                                        require mem[_12385] <= test266151307()
                                        require _12385 + mem[_12385] + 31 < _12385 + return_data.size
                                        _12521 = mem[_12385 + mem[_12385]]
                                        if mem[_12385 + mem[_12385]] > test266151307():
                                            revert with 0, 65
                                        if _12385 + ceil32(return_data.size) + ceil32(32 * mem[_12385 + mem[_12385]]) + 1 > test266151307() or ceil32(32 * mem[_12385 + mem[_12385]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12385 + ceil32(return_data.size) + ceil32(32 * mem[_12385 + mem[_12385]]) + 1
                                        mem[_12385 + ceil32(return_data.size)] = _12521
                                        require (32 * _12521) + _12467 + 32 <= return_data.size
                                        s = _12385 + ceil32(return_data.size) + 32
                                        idx = _12385 + _12467 + 32
                                        while idx < (32 * _12521) + _12385 + _12467 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12521:
                                            if idx >= mem[_12385 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18112 = mem[(32 * idx) + _12385 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18112))
                                            call address(_18112).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11414] < arg1:
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12431 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12494 = mem[_12431]
                                        require mem[_12431] <= test266151307()
                                        require _12431 + mem[_12431] + 31 < _12431 + return_data.size
                                        _12593 = mem[_12431 + mem[_12431]]
                                        if mem[_12431 + mem[_12431]] > test266151307():
                                            revert with 0, 65
                                        if _12431 + ceil32(return_data.size) + ceil32(32 * mem[_12431 + mem[_12431]]) + 1 > test266151307() or ceil32(32 * mem[_12431 + mem[_12431]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12431 + ceil32(return_data.size) + ceil32(32 * mem[_12431 + mem[_12431]]) + 1
                                        mem[_12431 + ceil32(return_data.size)] = _12593
                                        require (32 * _12593) + _12494 + 32 <= return_data.size
                                        s = _12431 + ceil32(return_data.size) + 32
                                        idx = _12431 + _12494 + 32
                                        while idx < (32 * _12593) + _12431 + _12494 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12593:
                                            if idx >= mem[_12431 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18117 = mem[(32 * idx) + _12431 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18117))
                                            call address(_18117).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        if not msg.sender:
                            revert with 0, 'burn-from-the-zero-address'
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 'burn-amount-exceeds-balance'
                        balanceOf[address(msg.sender)] -= arg1
                        if totalSupply < arg1:
                            revert with 0, 17
                        totalSupply -= arg1
                        emit 0xfeddf252: arg1, msg.sender, 0
                        if not balanceOf[address(msg.sender)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xf2d5d56b with:
                             gas gas_remaining wei
                            args address(arg2), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x4700a5c5: arg1, 0, msg.sender, arg2
                    else:
                        if arg1 and ext_call.return_data[0] > -1 / arg1:
                            revert with 0, 17
                        if arg1 * ext_call.return_data[0] > -500000000000000001:
                            revert with 0, 17
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0x3605b51b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _386 = mem[(10 * ceil32(return_data.size)) + 96]
                        require mem[(10 * ceil32(return_data.size)) + 96] <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _424 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96] + 96]
                        require (32 * _424) + _386 + 32 <= return_data.size
                        s = (11 * ceil32(return_data.size)) + 128
                        idx = (10 * ceil32(return_data.size)) + _386 + 128
                        while idx < (32 * _424) + (10 * ceil32(return_data.size)) + _386 + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < _424:
                            if idx >= mem[(11 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _9365 = mem[(32 * idx) + (11 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0xb17b23a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = address(ext_call.return_data[0])
                            require ext_code.size(address(_9365))
                            call address(_9365).0xb17b23a0 with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not msg.sender:
                            revert with 0, 'transfer-from-the-zero-address'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'transfer-to-the-zero-address'
                        if balanceOf[address(msg.sender)] < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                            revert with 0, 'transfer-amount-exceeds-balance'
                        balanceOf[address(msg.sender)] -= (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        if balanceOf[address(ext_call.return_data[0])] > !((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        balanceOf[address(ext_call.return_data[0])] += (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        emit 0xfeddf252: ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18), msg.sender, address(ext_call.return_data[0])
                        if balanceOf[address(ext_call.return_data[0])] < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                            revert with 0, 17
                        if balanceOf[address(ext_call.return_data[0])] - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9771 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9771] == bool(mem[_9771])
                                _9862 = mem[_9771 + 128]
                                if mem[_9771 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10144 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10217 = mem[_10144]
                                    require mem[_10144] <= test266151307()
                                    require _10144 + mem[_10144] + 31 < _10144 + return_data.size
                                    _10275 = mem[_10144 + mem[_10144]]
                                    if mem[_10144 + mem[_10144]] > test266151307():
                                        revert with 0, 65
                                    if _10144 + ceil32(return_data.size) + ceil32(32 * mem[_10144 + mem[_10144]]) + 1 > test266151307() or ceil32(32 * mem[_10144 + mem[_10144]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10144 + ceil32(return_data.size) + ceil32(32 * mem[_10144 + mem[_10144]]) + 1
                                    mem[_10144 + ceil32(return_data.size)] = _10275
                                    require (32 * _10275) + _10217 + 32 <= return_data.size
                                    s = _10144 + ceil32(return_data.size) + 32
                                    idx = _10144 + _10217 + 32
                                    while idx < (32 * _10275) + _10144 + _10217 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10275:
                                        if idx >= mem[_10144 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18002 = mem[(32 * idx) + _10144 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18002))
                                        call address(_18002).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9771 + 128] and 10^18 > -1 / mem[_9771 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9771 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10376 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10470 = mem[_10376]
                                    require mem[_10376] == mem[_10376 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9862) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10470))
                                    staticcall address(_10470).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9862) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10905 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_10905]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11857 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12036 = mem[_11857]
                                        require mem[_11857] <= test266151307()
                                        require _11857 + mem[_11857] + 31 < _11857 + return_data.size
                                        _12177 = mem[_11857 + mem[_11857]]
                                        if mem[_11857 + mem[_11857]] > test266151307():
                                            revert with 0, 65
                                        if _11857 + ceil32(return_data.size) + ceil32(32 * mem[_11857 + mem[_11857]]) + 1 > test266151307() or ceil32(32 * mem[_11857 + mem[_11857]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11857 + ceil32(return_data.size) + ceil32(32 * mem[_11857 + mem[_11857]]) + 1
                                        mem[_11857 + ceil32(return_data.size)] = _12177
                                        require (32 * _12177) + _12036 + 32 <= return_data.size
                                        s = _11857 + ceil32(return_data.size) + 32
                                        idx = _11857 + _12036 + 32
                                        while idx < (32 * _12177) + _11857 + _12036 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12177:
                                            if idx >= mem[_11857 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18007 = mem[(32 * idx) + _11857 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18007))
                                            call address(_18007).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_10905] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11949 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12117 = mem[_11949]
                                        require mem[_11949] <= test266151307()
                                        require _11949 + mem[_11949] + 31 < _11949 + return_data.size
                                        _12239 = mem[_11949 + mem[_11949]]
                                        if mem[_11949 + mem[_11949]] > test266151307():
                                            revert with 0, 65
                                        if _11949 + ceil32(return_data.size) + ceil32(32 * mem[_11949 + mem[_11949]]) + 1 > test266151307() or ceil32(32 * mem[_11949 + mem[_11949]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _11949 + ceil32(return_data.size) + ceil32(32 * mem[_11949 + mem[_11949]]) + 1
                                        mem[_11949 + ceil32(return_data.size)] = _12239
                                        require (32 * _12239) + _12117 + 32 <= return_data.size
                                        s = _11949 + ceil32(return_data.size) + 32
                                        idx = _11949 + _12117 + 32
                                        while idx < (32 * _12239) + _11949 + _12117 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12239:
                                            if idx >= mem[_11949 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18012 = mem[(32 * idx) + _11949 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18012))
                                            call address(_18012).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9825 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9825] == bool(mem[_9825])
                                _9978 = mem[_9825 + 128]
                                if mem[_9825 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10276 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10354 = mem[_10276]
                                    require mem[_10276] <= test266151307()
                                    require _10276 + mem[_10276] + 31 < _10276 + return_data.size
                                    _10401 = mem[_10276 + mem[_10276]]
                                    if mem[_10276 + mem[_10276]] > test266151307():
                                        revert with 0, 65
                                    if _10276 + ceil32(return_data.size) + ceil32(32 * mem[_10276 + mem[_10276]]) + 1 > test266151307() or ceil32(32 * mem[_10276 + mem[_10276]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10276 + ceil32(return_data.size) + ceil32(32 * mem[_10276 + mem[_10276]]) + 1
                                    mem[_10276 + ceil32(return_data.size)] = _10401
                                    require (32 * _10401) + _10354 + 32 <= return_data.size
                                    s = _10276 + ceil32(return_data.size) + 32
                                    idx = _10276 + _10354 + 32
                                    while idx < (32 * _10401) + _10276 + _10354 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10401:
                                        if idx >= mem[_10276 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18017 = mem[(32 * idx) + _10276 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18017))
                                        call address(_18017).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9825 + 128] and 10^18 > -1 / mem[_9825 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9825 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10528 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10641 = mem[_10528]
                                    require mem[_10528] == mem[_10528 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9978) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10641))
                                    staticcall address(_10641).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9978) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11212 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11212]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12178 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12295 = mem[_12178]
                                        require mem[_12178] <= test266151307()
                                        require _12178 + mem[_12178] + 31 < _12178 + return_data.size
                                        _12379 = mem[_12178 + mem[_12178]]
                                        if mem[_12178 + mem[_12178]] > test266151307():
                                            revert with 0, 65
                                        if _12178 + ceil32(return_data.size) + ceil32(32 * mem[_12178 + mem[_12178]]) + 1 > test266151307() or ceil32(32 * mem[_12178 + mem[_12178]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12178 + ceil32(return_data.size) + ceil32(32 * mem[_12178 + mem[_12178]]) + 1
                                        mem[_12178 + ceil32(return_data.size)] = _12379
                                        require (32 * _12379) + _12295 + 32 <= return_data.size
                                        s = _12178 + ceil32(return_data.size) + 32
                                        idx = _12178 + _12295 + 32
                                        while idx < (32 * _12379) + _12178 + _12295 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12379:
                                            if idx >= mem[_12178 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18022 = mem[(32 * idx) + _12178 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18022))
                                            call address(_18022).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11212] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12240 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12341 = mem[_12240]
                                        require mem[_12240] <= test266151307()
                                        require _12240 + mem[_12240] + 31 < _12240 + return_data.size
                                        _12423 = mem[_12240 + mem[_12240]]
                                        if mem[_12240 + mem[_12240]] > test266151307():
                                            revert with 0, 65
                                        if _12240 + ceil32(return_data.size) + ceil32(32 * mem[_12240 + mem[_12240]]) + 1 > test266151307() or ceil32(32 * mem[_12240 + mem[_12240]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12240 + ceil32(return_data.size) + ceil32(32 * mem[_12240 + mem[_12240]]) + 1
                                        mem[_12240 + ceil32(return_data.size)] = _12423
                                        require (32 * _12423) + _12341 + 32 <= return_data.size
                                        s = _12240 + ceil32(return_data.size) + 32
                                        idx = _12240 + _12341 + 32
                                        while idx < (32 * _12423) + _12240 + _12341 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12423:
                                            if idx >= mem[_12240 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18027 = mem[(32 * idx) + _12240 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18027))
                                            call address(_18027).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        else:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x3f5fc131 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = 52
                            if balanceOf[address(msg.sender)]:
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9826] == bool(mem[_9826])
                                _9982 = mem[_9826 + 128]
                                if mem[_9826 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10277 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10355 = mem[_10277]
                                    require mem[_10277] <= test266151307()
                                    require _10277 + mem[_10277] + 31 < _10277 + return_data.size
                                    _10402 = mem[_10277 + mem[_10277]]
                                    if mem[_10277 + mem[_10277]] > test266151307():
                                        revert with 0, 65
                                    if _10277 + ceil32(return_data.size) + ceil32(32 * mem[_10277 + mem[_10277]]) + 1 > test266151307() or ceil32(32 * mem[_10277 + mem[_10277]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10277 + ceil32(return_data.size) + ceil32(32 * mem[_10277 + mem[_10277]]) + 1
                                    mem[_10277 + ceil32(return_data.size)] = _10402
                                    require (32 * _10402) + _10355 + 32 <= return_data.size
                                    s = _10277 + ceil32(return_data.size) + 32
                                    idx = _10277 + _10355 + 32
                                    while idx < (32 * _10402) + _10277 + _10355 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10402:
                                        if idx >= mem[_10277 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18032 = mem[(32 * idx) + _10277 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18032))
                                        call address(_18032).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9826 + 128] and 10^18 > -1 / mem[_9826 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9826 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10529 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10642 = mem[_10529]
                                    require mem[_10529] == mem[_10529 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _9982) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10642))
                                    staticcall address(_10642).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _9982) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11218 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11218]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12180 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12296 = mem[_12180]
                                        require mem[_12180] <= test266151307()
                                        require _12180 + mem[_12180] + 31 < _12180 + return_data.size
                                        _12380 = mem[_12180 + mem[_12180]]
                                        if mem[_12180 + mem[_12180]] > test266151307():
                                            revert with 0, 65
                                        if _12180 + ceil32(return_data.size) + ceil32(32 * mem[_12180 + mem[_12180]]) + 1 > test266151307() or ceil32(32 * mem[_12180 + mem[_12180]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12180 + ceil32(return_data.size) + ceil32(32 * mem[_12180 + mem[_12180]]) + 1
                                        mem[_12180 + ceil32(return_data.size)] = _12380
                                        require (32 * _12380) + _12296 + 32 <= return_data.size
                                        s = _12180 + ceil32(return_data.size) + 32
                                        idx = _12180 + _12296 + 32
                                        while idx < (32 * _12380) + _12180 + _12296 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12380:
                                            if idx >= mem[_12180 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18037 = mem[(32 * idx) + _12180 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18037))
                                            call address(_18037).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11218] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12241 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12342 = mem[_12241]
                                        require mem[_12241] <= test266151307()
                                        require _12241 + mem[_12241] + 31 < _12241 + return_data.size
                                        _12425 = mem[_12241 + mem[_12241]]
                                        if mem[_12241 + mem[_12241]] > test266151307():
                                            revert with 0, 65
                                        if _12241 + ceil32(return_data.size) + ceil32(32 * mem[_12241 + mem[_12241]]) + 1 > test266151307() or ceil32(32 * mem[_12241 + mem[_12241]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12241 + ceil32(return_data.size) + ceil32(32 * mem[_12241 + mem[_12241]]) + 1
                                        mem[_12241 + ceil32(return_data.size)] = _12425
                                        require (32 * _12425) + _12342 + 32 <= return_data.size
                                        s = _12241 + ceil32(return_data.size) + 32
                                        idx = _12241 + _12342 + 32
                                        while idx < (32 * _12425) + _12241 + _12342 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12425:
                                            if idx >= mem[_12241 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18042 = mem[(32 * idx) + _12241 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18042))
                                            call address(_18042).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                            else:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x275038d0 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                    revert with 0, 17
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xdde3ab95 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9901 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_9901] == bool(mem[_9901])
                                _10082 = mem[_9901 + 128]
                                if mem[_9901 + 128] <= 0:
                                    if 0 < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                        revert with 0, 'not-enough-free-balance'
                                    mem[0] = msg.sender
                                    mem[32] = 62
                                    if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                        revert with 0, 17
                                    if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                        revert with 0, 'min-deposit-time-have-not-passed'
                                    mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0x3605b51b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10403 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10503 = mem[_10403]
                                    require mem[_10403] <= test266151307()
                                    require _10403 + mem[_10403] + 31 < _10403 + return_data.size
                                    _10548 = mem[_10403 + mem[_10403]]
                                    if mem[_10403 + mem[_10403]] > test266151307():
                                        revert with 0, 65
                                    if _10403 + ceil32(return_data.size) + ceil32(32 * mem[_10403 + mem[_10403]]) + 1 > test266151307() or ceil32(32 * mem[_10403 + mem[_10403]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _10403 + ceil32(return_data.size) + ceil32(32 * mem[_10403 + mem[_10403]]) + 1
                                    mem[_10403 + ceil32(return_data.size)] = _10548
                                    require (32 * _10548) + _10503 + 32 <= return_data.size
                                    s = _10403 + ceil32(return_data.size) + 32
                                    idx = _10403 + _10503 + 32
                                    while idx < (32 * _10548) + _10403 + _10503 + 32:
                                        require mem[idx] == mem[idx + 12 len 20]
                                        mem[s] = mem[idx]
                                        s = s + 32
                                        idx = idx + 32
                                        continue 
                                    idx = 0
                                    while idx < _10548:
                                        if idx >= mem[_10403 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _18047 = mem[(32 * idx) + _10403 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(_18047))
                                        call address(_18047).0x1b30f0c0 with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if mem[_9901 + 128] and 10^18 > -1 / mem[_9901 + 128]:
                                        revert with 0, 17
                                    if 10^18 * mem[_9901 + 128] > !uint255(stor60.field_1):
                                        revert with 0, 17
                                    if not collateralizationRatio:
                                        revert with 0, 18
                                    mem[0] = msg.sender
                                    mem[32] = 52
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xeaada382 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10743 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10918 = mem[_10743]
                                    require mem[_10743] == mem[_10743 + 12 len 20]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^18 * _10082) + uint255(stor60.field_1) / collateralizationRatio
                                    require ext_code.size(address(_10918))
                                    staticcall address(_10918).0x57f1915d with:
                                            gas gas_remaining wei
                                           args address(this.address), (10^18 * _10082) + uint255(stor60.field_1) / collateralizationRatio
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11406 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if balanceOf[address(msg.sender)] < mem[_11406]:
                                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12381 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12463 = mem[_12381]
                                        require mem[_12381] <= test266151307()
                                        require _12381 + mem[_12381] + 31 < _12381 + return_data.size
                                        _12518 = mem[_12381 + mem[_12381]]
                                        if mem[_12381 + mem[_12381]] > test266151307():
                                            revert with 0, 65
                                        if _12381 + ceil32(return_data.size) + ceil32(32 * mem[_12381 + mem[_12381]]) + 1 > test266151307() or ceil32(32 * mem[_12381 + mem[_12381]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12381 + ceil32(return_data.size) + ceil32(32 * mem[_12381 + mem[_12381]]) + 1
                                        mem[_12381 + ceil32(return_data.size)] = _12518
                                        require (32 * _12518) + _12463 + 32 <= return_data.size
                                        s = _12381 + ceil32(return_data.size) + 32
                                        idx = _12381 + _12463 + 32
                                        while idx < (32 * _12518) + _12381 + _12463 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12518:
                                            if idx >= mem[_12381 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18052 = mem[(32 * idx) + _12381 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18052))
                                            call address(_18052).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if mem[_11406] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                                            revert with 0, 'not-enough-free-balance'
                                        mem[0] = msg.sender
                                        mem[32] = 62
                                        if sub_f46c3c51[address(msg.sender)] > !sub_934472f5:
                                            revert with 0, 17
                                        if block.timestamp < sub_f46c3c51[address(msg.sender)] + sub_934472f5:
                                            revert with 0, 'min-deposit-time-have-not-passed'
                                        mem[mem[64]] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(controllerAddress)
                                        staticcall controllerAddress.0x3605b51b with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12426 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _12491 = mem[_12426]
                                        require mem[_12426] <= test266151307()
                                        require _12426 + mem[_12426] + 31 < _12426 + return_data.size
                                        _12585 = mem[_12426 + mem[_12426]]
                                        if mem[_12426 + mem[_12426]] > test266151307():
                                            revert with 0, 65
                                        if _12426 + ceil32(return_data.size) + ceil32(32 * mem[_12426 + mem[_12426]]) + 1 > test266151307() or ceil32(32 * mem[_12426 + mem[_12426]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _12426 + ceil32(return_data.size) + ceil32(32 * mem[_12426 + mem[_12426]]) + 1
                                        mem[_12426 + ceil32(return_data.size)] = _12585
                                        require (32 * _12585) + _12491 + 32 <= return_data.size
                                        s = _12426 + ceil32(return_data.size) + 32
                                        idx = _12426 + _12491 + 32
                                        while idx < (32 * _12585) + _12426 + _12491 + 32:
                                            require mem[idx] == mem[idx + 12 len 20]
                                            mem[s] = mem[idx]
                                            s = s + 32
                                            idx = idx + 32
                                            continue 
                                        idx = 0
                                        while idx < _12585:
                                            if idx >= mem[_12426 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _18057 = mem[(32 * idx) + _12426 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            require ext_code.size(address(_18057))
                                            call address(_18057).0x1b30f0c0 with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                        if not msg.sender:
                            revert with 0, 'burn-from-the-zero-address'
                        if balanceOf[address(msg.sender)] < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            revert with 0, 'burn-amount-exceeds-balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg1 + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                        if totalSupply < arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        totalSupply = totalSupply - arg1 + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                        emit 0xfeddf252: (arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)), msg.sender, 0
                        if not balanceOf[address(msg.sender)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x275038d0 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xf2d5d56b with:
                             gas gas_remaining wei
                            args address(arg2), arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x4700a5c5: arg1, (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18, msg.sender, arg2
    stor1 = 1
}



}
