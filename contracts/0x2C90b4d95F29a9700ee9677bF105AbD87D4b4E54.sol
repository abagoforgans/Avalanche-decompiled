contract main {




// =====================  Runtime code  =====================


#
#  - liquidatePosition(address arg1)
#
address owner;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of address allowedTokenById;
address stor5;
address stor6;
address stor7;
uint8 stor8; offset 160
address vaultServiceAddress;

function allowedTokenById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allowedTokenById.length
    return allowedTokenById[arg1]
}

function allowedTokenCount() payable {
    return allowedTokenById.length
}

function owner() payable {
    return owner
}

function getVaultService() payable {
    return vaultServiceAddress
}

function getRiskLevel() payable {
    return bool(stor8)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLiquidatorStatus(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
}

function hasOpenPosition() payable {
    require ext_code.size(stor6)
    staticcall stor6.hasOpenPosition(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getPositionTokensCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.getTokenListCount(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getPositionDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32]
}

function getPositionTokensById(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor6)
    staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[12 len 20], ext_call.return_data[32]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function disallowTokenForTrading(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe596f752063616e7420646973616c6c6f772062617365207661756c7420746f6b65,
                    mem[198 len 30]
    stor3[address(arg1)] = 0
    idx = 0
    s = allowedTokenById.length - 1
    t = 0
    while idx < allowedTokenById.length:
        mem[0] = 4
        if allowedTokenById[idx] != arg1:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = idx
        t = 1
        continue 
    if t:
        if s != allowedTokenById.length - 1:
            require allowedTokenById.length - 1 < allowedTokenById.length
            require s < allowedTokenById.length
            allowedTokenById[s] = allowedTokenById[allowedTokenById.length]
        require allowedTokenById.length
        allowedTokenById[allowedTokenById.length] = 0
        allowedTokenById.length--
}

function calcAmountInterested(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0x488b7c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32] - ext_call.return_data[0]:
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[64]:
            return (0 / ext_call.return_data[64] / 10^18)
    else:
        if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[64]:
            return ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18)
    ('iszero', ('ext_call.return_data', 64, 32))
    revert
}

function calcPositionBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.getTokenListCount(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[132] = arg1
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, address(arg1), idx
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            idx = idx + 1
            s = s
            continue 
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        mem[164] = ext_call.return_data[32]
        require ext_code.size(stor7)
        staticcall stor7.getAmountOut(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1, ext_call.return_data[32]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}

function openPosition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 100 * 10^18:
        revert with 0, 'NOT MORE in TESTS'
    if not arg1:
        require ext_code.size(vaultServiceAddress)
        staticcall vaultServiceAddress.0x488b7c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultServiceAddress)
        call vaultServiceAddress.0x76777391 with:
             gas gas_remaining wei
            args msg.sender, arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        call stor6.openPosition(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), stor1, arg1, 0, ext_call.return_data[0]
    else:
        if 5 * arg1 / arg1 != 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(vaultServiceAddress)
        staticcall vaultServiceAddress.0x488b7c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultServiceAddress)
        call vaultServiceAddress.0x76777391 with:
             gas gas_remaining wei
            args msg.sender, arg1, 5 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        call stor6.openPosition(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), stor1, arg1, 5 * arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OpenLeverage(arg1, msg.sender);
}

function sub_841449d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[ceil32(arg1.length) + 128] = 0xfc518b4a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor5)
    staticcall stor5 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < allowedTokenById.length:
        mem[0] = 4
        mem[mem[64] + 4] = vaultServiceAddress
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        require ext_code.size(allowedTokenById[idx])
        staticcall allowedTokenById[idx].0xdd62ed3e with:
                gas gas_remaining wei
               args vaultServiceAddress, address(ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < allowedTokenById.length
            mem[0] = 4
            mem[mem[64]] = 0xefc16c7500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = allowedTokenById[idx]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            s = 0
            while s < mem[96]:
                mem[s + mem[64] + 100] = mem[s + 128]
                s = s + 32
                continue 
            if not mem[96] % 32:
                require ext_code.size(vaultServiceAddress)
                call vaultServiceAddress.0xefc16c75 with:
                     gas gas_remaining wei
                    args allowedTokenById[idx], 64, mem[mem[64] + 68 len mem[96] + 32]
            else:
                mem[floor32(mem[96]) + mem[64] + 100] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 132 len mem[96] % 32]
                require ext_code.size(vaultServiceAddress)
                call vaultServiceAddress.0xefc16c75 with:
                     gas gas_remaining wei
                    args allowedTokenById[idx], Array(len=mem[96], data=mem[mem[64] + 100 len floor32(mem[96]) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_773dcbc8(?) payable {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    require 0 < ('cd', 68).length
    if not stor3[address(('cd', 68)[0])]:
        revert with 0, 'This token is not allowed'
    require ('cd', 68).length - 1 < ('cd', 68).length
    if not stor3[address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])]:
        revert with 0, 'This token is not allowed'
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(('cd', 68)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 132).length) + 128] = 0x773dcbc800000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 132).length) + 324 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + 324] = 0
    mem[ceil32(('cd', 132).length) + floor32(('cd', 68).length) + 324] = ('cd', 132).length
    mem[ceil32(('cd', 132).length) + floor32(('cd', 68).length) + 356 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]
    if not ('cd', 132).length % 32:
        require ext_code.size(vaultServiceAddress)
        call vaultServiceAddress with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[ceil32(('cd', 132).length) + 324 len floor32(('cd', 68).length) + 32], Mask(8 * ('cd', 132).length, -(8 * ('cd', 132).length) + 256, call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]) << (8 * ('cd', 132).length) - 256), cd[100], floor32(('cd', 68).length) + 192
    else:
        mem[floor32(('cd', 132).length) + ceil32(('cd', 132).length) + floor32(('cd', 68).length) + 356] = mem[floor32(('cd', 132).length) + ceil32(('cd', 132).length) + floor32(('cd', 68).length) + -(('cd', 132).length % 32) + 388 len ('cd', 132).length % 32]
        require ext_code.size(vaultServiceAddress)
        call vaultServiceAddress with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[ceil32(('cd', 132).length) + 324 len floor32(('cd', 68).length) + 32], Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]) << (8 * ceil32(('cd', 132).length)) - 256, mem[(2 * ceil32(('cd', 132).length)) + floor32(('cd', 68).length) + 356 len floor32(('cd', 132).length) + -ceil32(('cd', 132).length) + 32]), cd[100], floor32(('cd', 68).length) + 192
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(('cd', 68)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor6)
    call stor6.swapAssets(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 68)[0]), 0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f26ecf24(?) payable {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    require 0 < ('cd', 68).length
    if not stor3[address(('cd', 68)[0])]:
        revert with 0, 'This token is not allowed'
    require ('cd', 68).length - 1 < ('cd', 68).length
    if not stor3[address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])]:
        revert with 0, 'This token is not allowed'
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(('cd', 68)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(('cd', 132).length) + 128] = 0xf26ecf2400000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 132).length) + 324 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + 324] = 0
    mem[ceil32(('cd', 132).length) + floor32(('cd', 68).length) + 324] = ('cd', 132).length
    mem[ceil32(('cd', 132).length) + floor32(('cd', 68).length) + 356 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]
    if not ('cd', 132).length % 32:
        require ext_code.size(vaultServiceAddress)
        call vaultServiceAddress with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[ceil32(('cd', 132).length) + 324 len floor32(('cd', 68).length) + 32], Mask(8 * ('cd', 132).length, -(8 * ('cd', 132).length) + 256, call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]) << (8 * ('cd', 132).length) - 256), cd[100], floor32(('cd', 68).length) + 192
    else:
        mem[floor32(('cd', 132).length) + ceil32(('cd', 132).length) + floor32(('cd', 68).length) + 356] = mem[floor32(('cd', 132).length) + ceil32(('cd', 132).length) + floor32(('cd', 68).length) + -(('cd', 132).length % 32) + 388 len ('cd', 132).length % 32]
        require ext_code.size(vaultServiceAddress)
        call vaultServiceAddress with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[ceil32(('cd', 132).length) + 324 len floor32(('cd', 68).length) + 32], Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]) << (8 * ceil32(('cd', 132).length)) - 256, mem[(2 * ceil32(('cd', 132).length)) + floor32(('cd', 68).length) + 356 len floor32(('cd', 132).length) + -ceil32(('cd', 132).length) + 32]), cd[100], floor32(('cd', 68).length) + 192
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(('cd', 68)[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor6)
    call stor6.swapAssets(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 68)[0]), 0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function allowTokenForTrading(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '0x0 address is not allowed'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x79307830207072696365666565642061646472657373206973206e6f7420616c6c6f7765,
                    mem[200 len 28]
    mem[96] = 0x44d78b400000000000000000000000000000000000000000000000000000000
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0x44d78b4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _12 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _15 = mem[_12 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
    if not _15 % 32:
        mem[_15 + ceil32(return_data.size) + 128] = 0xefc16c7500000000000000000000000000000000000000000000000000000000
        mem[_15 + ceil32(return_data.size) + 132] = arg1
        mem[_15 + ceil32(return_data.size) + 164] = 64
        mem[_15 + ceil32(return_data.size) + 196] = mem[ceil32(return_data.size) + 96]
        mem[_15 + ceil32(return_data.size) + 228 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress.0xefc16c75 with:
                 gas gas_remaining wei
                args address(arg1), 64, mem[_15 + ceil32(return_data.size) + 196 len mem[ceil32(return_data.size) + 96] + 32]
        else:
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _15 + ceil32(return_data.size) + 228] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _15 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 260 len mem[ceil32(return_data.size) + 96] % 32]
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress.0xefc16c75 with:
                 gas gas_remaining wei
                args address(arg1), Array(len=mem[ceil32(return_data.size) + 96], data=mem[_15 + ceil32(return_data.size) + 228 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    else:
        mem[floor32(_15) + ceil32(return_data.size) + 128] = mem[floor32(_15) + ceil32(return_data.size) + -(_15 % 32) + 160 len _15 % 32]
        mem[floor32(_15) + ceil32(return_data.size) + 160] = 0xefc16c7500000000000000000000000000000000000000000000000000000000
        mem[floor32(_15) + ceil32(return_data.size) + 164] = arg1
        mem[floor32(_15) + ceil32(return_data.size) + 196] = 64
        mem[floor32(_15) + ceil32(return_data.size) + 228] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_15) + ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress.0xefc16c75 with:
                 gas gas_remaining wei
                args address(arg1), 64, mem[floor32(_15) + ceil32(return_data.size) + 228 len mem[ceil32(return_data.size) + 96] + 32]
        else:
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_15) + ceil32(return_data.size) + 260] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_15) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 292 len mem[ceil32(return_data.size) + 96] % 32]
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress.0xefc16c75 with:
                 gas gas_remaining wei
                args address(arg1), Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_15) + ceil32(return_data.size) + 260 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.addPriceFeed(address arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(arg1)] = 1
    idx = 0
    s = 1
    while idx < allowedTokenById.length:
        mem[0] = 4
        if allowedTokenById[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    if s:
        allowedTokenById.length++
        allowedTokenById[allowedTokenById.length] = arg1
}

function sub_7458c70e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor6)
    staticcall stor6.getTokenListCount(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[132] = arg1
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, address(arg1), idx
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            idx = idx + 1
            s = s
            continue 
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        mem[164] = ext_call.return_data[32]
        require ext_code.size(stor7)
        staticcall stor7.getAmountOut(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1, ext_call.return_data[32]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0x488b7c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32] - ext_call.return_data[0]:
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[64]:
            if (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] / 5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not (ext_call.return_data[0] / 5) + (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s:
                    return 0 / s >= 97
            else:
                if (10^10 * ext_call.return_data[0] / 5) + (10^10 * 0 / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / (ext_call.return_data[0] / 5) + (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] != 10^10:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s:
                    return (10^10 * ext_call.return_data[0] / 5) + (10^10 * 0 / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / s >= 97
            ('iszero', ('var', 1))
    else:
        if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[64]:
            if ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] / 5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not (ext_call.return_data[0] / 5) + ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s:
                    return 0 / s >= 97
            else:
                if (10^10 * ext_call.return_data[0] / 5) + (10^10 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / (ext_call.return_data[0] / 5) + ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] != 10^10:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s:
                    return (10^10 * ext_call.return_data[0] / 5) + (10^10 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / s >= 97
            ('iszero', ('var', 1))
    revert
}

function calcPositionCoverage_S1(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0x488b7c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32] - ext_call.return_data[0]:
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[64]:
            require ext_code.size(stor6)
            staticcall stor6.getTokenListCount(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[132] = arg1
                mem[164] = idx
                require ext_code.size(stor6)
                staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args this.address, address(arg1), idx
                mem[96 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    s = s
                    continue 
                mem[100] = address(ext_call.return_data[0])
                mem[132] = stor1
                mem[164] = ext_call.return_data[32]
                require ext_code.size(stor7)
                staticcall stor7.getAmountOut(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), stor1, ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            if not 0 / ext_call.return_data[64] / 10^18:
                if 0 > s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (0 / ext_call.return_data[32])
                else:
                    if 10^10 * s / s != 10^10:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (10^10 * s / ext_call.return_data[32])
            else:
                if 100 * 10^6 * 0 / ext_call.return_data[64] / 10^18 / 0 / ext_call.return_data[64] / 10^18 != 100 * 10^6:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if 100 * 10^6 * 0 / ext_call.return_data[64] / 10^18 > s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s - (100 * 10^6 * 0 / ext_call.return_data[64] / 10^18):
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (0 / ext_call.return_data[32])
                else:
                    if (10^10 * s) - (10^18 * 0 / ext_call.return_data[64] / 10^18) / s - (100 * 10^6 * 0 / ext_call.return_data[64] / 10^18) != 10^10:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return ((10^10 * s) - (10^18 * 0 / ext_call.return_data[64] / 10^18) / ext_call.return_data[32])
            ('iszero', ('ext_call.return_data', 32, 32))
    else:
        if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[64]:
            require ext_code.size(stor6)
            staticcall stor6.getTokenListCount(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[132] = arg1
                mem[164] = idx
                require ext_code.size(stor6)
                staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args this.address, address(arg1), idx
                mem[96 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    idx = idx + 1
                    s = s
                    continue 
                mem[100] = address(ext_call.return_data[0])
                mem[132] = stor1
                mem[164] = ext_call.return_data[32]
                require ext_code.size(stor7)
                staticcall stor7.getAmountOut(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), stor1, ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            if not (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18:
                if 0 > s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (0 / ext_call.return_data[32])
                else:
                    if 10^10 * s / s != 10^10:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (10^10 * s / ext_call.return_data[32])
            else:
                if 100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 / (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 != 100 * 10^6:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if 100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 > s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s - (100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18):
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (0 / ext_call.return_data[32])
                else:
                    if (10^10 * s) - (10^18 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) / s - (100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) != 10^10:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return ((10^10 * s) - (10^18 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) / ext_call.return_data[32])
            ('iszero', ('ext_call.return_data', 32, 32))
    revert
}

function closePosition() payable {
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor6)
    staticcall stor6.getTokenListCount(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[132] = msg.sender
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, msg.sender, idx
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            idx = idx + 1
            s = s
            continue 
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        mem[164] = ext_call.return_data[32]
        require ext_code.size(stor7)
        staticcall stor7.getAmountOut(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1, ext_call.return_data[32]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0x4b3d9579 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 14
    mem[128] = 0x434c4f534520504f534954494f4e000000000000000000000000000000000000
    mem[196] = 32
    mem[228] = 14
    mem[260] = 0
    mem[160] = 100
    mem[192 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args ''
    mem[328] = ext_call.return_data[0]
    mem[292] = 36
    mem[64] = 360
    mem[328 len 28] = ext_call.return_data[0 len 28]
    mem[324 len 4] = 4122065833
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args ext_call.return_data[0 len 28], ext_call.return_data[28 len 4]
    mem[364] = this.address
    mem[396] = msg.sender
    require ext_code.size(stor6)
    staticcall stor6.getTokenListCount(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, msg.sender
    mem[360] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, msg.sender, idx
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if stor1 != address(ext_call.return_data[0]):
            if ext_call.return_data[32]:
                _1104 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1104]
                mem[_1104 + 32] = address(ext_call.return_data[0])
                require 1 < mem[_1104]
                mem[_1104 + 64] = stor1
                mem[_1104 + 96] = 0x44d78b400000000000000000000000000000000000000000000000000000000
                require ext_code.size(vaultServiceAddress)
                staticcall vaultServiceAddress.0x44d78b4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1104 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1130 = mem[_1104 + 96]
                require mem[_1104 + 96] <= 4294967296
                require mem[_1104 + 96] + 32 <= return_data.size
                require return_data.size >= mem[_1104 + mem[_1104 + 96] + 96] + mem[_1104 + 96] + 32 and mem[_1104 + mem[_1104 + 96] + 96] <= 4294967296
                mem[_1104 + ceil32(return_data.size) + 96] = mem[_1104 + mem[_1104 + 96] + 96]
                _1141 = mem[_1104 + _1130 + 96]
                s = 0
                while s < _1141:
                    mem[s + _1104 + ceil32(return_data.size) + 128] = mem[s + _1104 + _1130 + 128]
                    s = s + 32
                    continue 
                if not _1141 % 32:
                    mem[64] = _1141 + _1104 + ceil32(return_data.size) + 128
                    mem[_1141 + _1104 + ceil32(return_data.size) + 128] = 0xf26ecf2400000000000000000000000000000000000000000000000000000000
                    mem[_1141 + _1104 + ceil32(return_data.size) + 132] = ext_call.return_data[32]
                    mem[_1141 + _1104 + ceil32(return_data.size) + 164] = 0
                    mem[_1141 + _1104 + ceil32(return_data.size) + 228] = block.timestamp + 1
                    mem[_1141 + _1104 + ceil32(return_data.size) + 196] = 160
                    mem[_1141 + _1104 + ceil32(return_data.size) + 292] = mem[_1104]
                    s = 0
                    while s < 32 * mem[_1104]:
                        mem[s + _1141 + _1104 + ceil32(return_data.size) + 324] = mem[s + _1104 + 32]
                        s = s + 32
                        continue 
                    mem[_1141 + _1104 + ceil32(return_data.size) + 260] = (32 * mem[_1104]) + 192
                    mem[(32 * mem[_1104]) + _1141 + _1104 + ceil32(return_data.size) + 324] = mem[_1104 + ceil32(return_data.size) + 96]
                    s = 0
                    while s < mem[_1104 + ceil32(return_data.size) + 96]:
                        mem[s + (32 * mem[_1104]) + _1141 + _1104 + ceil32(return_data.size) + 356] = mem[s + _1104 + ceil32(return_data.size) + 128]
                        s = s + 32
                        continue 
                    if not mem[_1104 + ceil32(return_data.size) + 96] % 32:
                        require ext_code.size(vaultServiceAddress)
                        call vaultServiceAddress.0xf26ecf24 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, block.timestamp + 1, mem[_1141 + _1104 + ceil32(return_data.size) + 260 len mem[_1104 + ceil32(return_data.size) + 96] + (32 * mem[_1104]) + 96]
                    else:
                        mem[floor32(mem[_1104 + ceil32(return_data.size) + 96]) + (32 * mem[_1104]) + _1141 + _1104 + ceil32(return_data.size) + 356] = mem[floor32(mem[_1104 + ceil32(return_data.size) + 96]) + (32 * mem[_1104]) + _1141 + _1104 + ceil32(return_data.size) + -(mem[_1104 + ceil32(return_data.size) + 96] % 32) + 388 len mem[_1104 + ceil32(return_data.size) + 96] % 32]
                        require ext_code.size(vaultServiceAddress)
                        call vaultServiceAddress.0xf26ecf24 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, block.timestamp + 1, mem[_1141 + _1104 + ceil32(return_data.size) + 260 len floor32(mem[_1104 + ceil32(return_data.size) + 96]) + (32 * mem[_1104]) + 128]
                else:
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 128] = mem[floor32(_1141) + _1104 + ceil32(return_data.size) + -(_1141 % 32) + 160 len _1141 % 32]
                    mem[64] = floor32(_1141) + _1104 + ceil32(return_data.size) + 160
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 160] = 0xf26ecf2400000000000000000000000000000000000000000000000000000000
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 164] = ext_call.return_data[32]
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 196] = 0
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 260] = block.timestamp + 1
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 228] = 160
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 324] = mem[_1104]
                    s = 0
                    while s < 32 * mem[_1104]:
                        mem[s + floor32(_1141) + _1104 + ceil32(return_data.size) + 356] = mem[s + _1104 + 32]
                        s = s + 32
                        continue 
                    mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 292] = (32 * mem[_1104]) + 192
                    mem[(32 * mem[_1104]) + floor32(_1141) + _1104 + ceil32(return_data.size) + 356] = mem[_1104 + ceil32(return_data.size) + 96]
                    s = 0
                    while s < mem[_1104 + ceil32(return_data.size) + 96]:
                        mem[s + (32 * mem[_1104]) + floor32(_1141) + _1104 + ceil32(return_data.size) + 388] = mem[s + _1104 + ceil32(return_data.size) + 128]
                        s = s + 32
                        continue 
                    if not mem[_1104 + ceil32(return_data.size) + 96] % 32:
                        require ext_code.size(vaultServiceAddress)
                        call vaultServiceAddress.0xf26ecf24 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, block.timestamp + 1, mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 292 len mem[_1104 + ceil32(return_data.size) + 96] + (32 * mem[_1104]) + 96]
                    else:
                        mem[floor32(mem[_1104 + ceil32(return_data.size) + 96]) + (32 * mem[_1104]) + floor32(_1141) + _1104 + ceil32(return_data.size) + 388] = mem[floor32(mem[_1104 + ceil32(return_data.size) + 96]) + (32 * mem[_1104]) + floor32(_1141) + _1104 + ceil32(return_data.size) + -(mem[_1104 + ceil32(return_data.size) + 96] % 32) + 420 len mem[_1104 + ceil32(return_data.size) + 96] % 32]
                        require ext_code.size(vaultServiceAddress)
                        call vaultServiceAddress.0xf26ecf24 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, block.timestamp + 1, mem[floor32(_1141) + _1104 + ceil32(return_data.size) + 292 len floor32(mem[_1104 + ceil32(return_data.size) + 96]) + (32 * mem[_1104]) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _1088 = mem[64]
    mem[mem[64] + 36] = 0
    _1089 = mem[64]
    mem[mem[64]] = 36
    mem[64] = mem[64] + 68
    mem[_1089 + 32 len 4] = 4122065833
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args mem[_1089 + 36 len mem[_1089] - 4]
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args ext_call.return_data[0 len 28], ext_call.return_data[28 len 4]
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args ext_call.return_data[32 len 28], ext_call.return_data[60 len 4]
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args 0
    require ext_code.size(vaultServiceAddress)
    staticcall vaultServiceAddress.0x488b7c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.getPositionDetails(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32] - ext_call.return_data[0]:
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[64]
        staticcall 'console.log'.0xf5b1bba9 with:
                gas gas_remaining wei
               args (0 / ext_call.return_data[64] / 10^18)
        if (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        staticcall 'console.log'.0xf5b1bba9 with:
                gas gas_remaining wei
               args ((0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0])
        if 0 <= (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args 0
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args 0
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress with:
                 gas gas_remaining wei
                args msg.sender, 0, ext_call.return_data[0], 0, 0, 0 / ext_call.return_data[64] / 10^18, 0
        else:
            if (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args (-(0 / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0])
            if 0 > -(0 / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args (-(0 / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0])
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress with:
                 gas gas_remaining wei
                args msg.sender, 0, ext_call.return_data[0], -(0 / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0], (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0], 0 / ext_call.return_data[64] / 10^18, 0
    else:
        if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1088 + 373 len 31]
        if ext_call.return_data[64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[64]
        staticcall 'console.log'.0xf5b1bba9 with:
                gas gas_remaining wei
               args ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18)
        if ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        staticcall 'console.log'.0xf5b1bba9 with:
                gas gas_remaining wei
               args (((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0])
        if 0 <= ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args 0
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args 0
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress with:
                 gas gas_remaining wei
                args msg.sender, 0, ext_call.return_data[0], 0, 0, (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18, 0
        else:
            if ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args (-((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0])
            if 0 > -((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args (-((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0])
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress with:
                 gas gas_remaining wei
                args msg.sender, 0, ext_call.return_data[0], -((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) - ext_call.return_data[32] + ext_call.return_data[0], ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0], (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.closePosition(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CloseLeverage(ext_call.return_data[0], ext_call.return_data[32] - ext_call.return_data[0], s, ext_call.return_data[0], msg.sender);
}



}
