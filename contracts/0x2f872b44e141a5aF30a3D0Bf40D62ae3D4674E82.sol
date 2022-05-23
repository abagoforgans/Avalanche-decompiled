contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of address allowedTokenById;
address stor6;
address stor7;
address vaultServiceAddress;
uint8 stor9; offset 160

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
    return bool(stor9)
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

function sub_8621b94d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '0x0 address is not allowed'
    idx = 0
    while idx < allowedTokenById.length:
        mem[0] = 4
        mem[100] = vaultServiceAddress
        mem[132] = arg1
        require ext_code.size(allowedTokenById[idx])
        staticcall allowedTokenById[idx].0xdd62ed3e with:
                gas gas_remaining wei
               args vaultServiceAddress, arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < allowedTokenById.length
            mem[0] = 4
            mem[96] = 0xadb2dea000000000000000000000000000000000000000000000000000000000
            mem[100] = allowedTokenById[idx]
            mem[132] = arg1
            require ext_code.size(vaultServiceAddress)
            call vaultServiceAddress.0xadb2dea0 with:
                 gas gas_remaining wei
                args allowedTokenById[idx], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
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
    require ext_code.size(vaultServiceAddress)
    call vaultServiceAddress.0xb81d2a4a with:
         gas gas_remaining wei
        args arg1
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

function sub_4fbdff9d(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
    require ext_code.size(vaultServiceAddress)
    call vaultServiceAddress.0xb7c15170 with:
         gas gas_remaining wei
        args 0, uint32(cd[4]), cd[36], 160, cd[100], 0, ('cd', 68).length, call.data[cd[68] + 36 len floor32(('cd', 68).length)]
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
        args 0, uint32(msg.sender), address(('cd', 68)[0]), 0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7c15170(?) payable {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
    require ext_code.size(vaultServiceAddress)
    call vaultServiceAddress.0xb7c15170 with:
         gas gas_remaining wei
        args 0, uint32(cd[4]), cd[36], 160, cd[100], address(cd[132]), ('cd', 68).length, call.data[cd[68] + 36 len floor32(('cd', 68).length)]
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
        args 0, uint32(msg.sender), address(('cd', 68)[0]), 0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(stor1)
    staticcall stor1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        require ext_code.size(stor7)
        staticcall stor7.getLastPrice(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                    if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] * ext_call.return_data[0]:
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] != 10^0:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
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
    require ext_code.size(stor1)
    staticcall stor1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        require ext_code.size(stor7)
        staticcall stor7.getLastPrice(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                    if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] * ext_call.return_data[0]:
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] != 10^0:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
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
        if ext_call.return_data[64] > 0:
            require ext_call.return_data[64]
            if (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] / 5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] / 5) + (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
                if (10^10 * ext_call.return_data[0] / 5) + (10^10 * 0 / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / (ext_call.return_data[0] / 5) + (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] != 10^10:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    else:
        if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if ext_call.return_data[64] > 0:
            require ext_call.return_data[64]
            if ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] / 5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] / 5) + ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
                if (10^10 * ext_call.return_data[0] / 5) + (10^10 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / (ext_call.return_data[0] / 5) + ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] != 10^10:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    revert with 0, 'SafeMath: division by zero'
}

function liquidatePosition(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x72416c6c6f77656420666f722077686f2063616e206c697175696461746520706f736974696f6e206f6e6c,
                    mem[207 len 21]
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
    require ext_code.size(stor1)
    staticcall stor1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        require ext_code.size(stor7)
        staticcall stor7.getLastPrice(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                    if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] * ext_call.return_data[0]:
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] != 10^0:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
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
        if ext_call.return_data[64] > 0:
            require ext_call.return_data[64]
            if (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] / 5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] / 5) + (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
                if (10^10 * ext_call.return_data[0] / 5) + (10^10 * 0 / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / (ext_call.return_data[0] / 5) + (0 / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] != 10^10:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    else:
        if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if ext_call.return_data[64] > 0:
            require ext_call.return_data[64]
            if ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] < ext_call.return_data[32]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] / 5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (ext_call.return_data[0] / 5) + ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0]:
                if (10^10 * ext_call.return_data[0] / 5) + (10^10 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0]) / (ext_call.return_data[0] / 5) + ((ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18) + ext_call.return_data[32] - ext_call.return_data[0] != 10^10:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    revert with 0, 'SafeMath: division by zero'
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
            require ext_code.size(stor1)
            staticcall stor1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[164] = idx
                require ext_code.size(stor6)
                staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args this.address, address(arg1), idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = address(ext_call.return_data[0])
                mem[132] = stor1
                require ext_code.size(stor7)
                staticcall stor7.getLastPrice(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), stor1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                        if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                            if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[32] * ext_call.return_data[0]:
                            if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] != 10^0:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if not 0 / ext_call.return_data[64] / 10^18:
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[32]:
                    return (0 / ext_call.return_data[32])
            else:
                if 100 * 10^6 * 0 / ext_call.return_data[64] / 10^18 / 0 / ext_call.return_data[64] / 10^18 != 100 * 10^6:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if 100 * 10^6 * 0 / ext_call.return_data[64] / 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -100 * 10^6 * 0 / ext_call.return_data[64] / 10^18:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (0 / ext_call.return_data[32])
                else:
                    if -1 * 10^18 * 0 / ext_call.return_data[64] / 10^18 / -100 * 10^6 * 0 / ext_call.return_data[64] / 10^18 != 10^10:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (-1 * 10^18 * 0 / ext_call.return_data[64] / 10^18 / ext_call.return_data[32])
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
            require ext_code.size(stor1)
            staticcall stor1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[164] = idx
                require ext_code.size(stor6)
                staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args this.address, address(arg1), idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = address(ext_call.return_data[0])
                mem[132] = stor1
                require ext_code.size(stor7)
                staticcall stor7.getLastPrice(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), stor1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                        if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                            if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[32] * ext_call.return_data[0] / 10^0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[32] * ext_call.return_data[0]:
                            if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] != 10^0:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if not (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18:
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[32]:
                    return (0 / ext_call.return_data[32])
            else:
                if 100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 / (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 != 100 * 10^6:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if 100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (0 / ext_call.return_data[32])
                else:
                    if -1 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 / -100 * 10^6 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 != 10^10:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[32]:
                        return (-1 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[64] / 10^18 / ext_call.return_data[32])
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
    require ext_code.size(stor1)
    staticcall stor1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[164] = idx
        require ext_code.size(stor6)
        staticcall stor6.getTokenById(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args this.address, msg.sender, idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        mem[132] = stor1
        require ext_code.size(stor7)
        staticcall stor7.getLastPrice(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), stor1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                if uint8(ext_call.return_data[0]) <= uint8(ext_call.return_data[0]):
                    if ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] * ext_call.return_data[0] / 10^0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] * ext_call.return_data[0]:
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] != 10^0:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if 10^0 * ext_call.return_data[32] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
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
                _1016 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1016]
                mem[_1016 + 32] = address(ext_call.return_data[0])
                require 1 < mem[_1016]
                mem[_1016 + 64] = stor1
                mem[_1016 + 96] = 0x1f263f5900000000000000000000000000000000000000000000000000000000
                mem[_1016 + 100] = ext_call.return_data[32]
                mem[_1016 + 132] = 0
                mem[_1016 + 196] = block.timestamp + 1
                mem[_1016 + 164] = 128
                mem[_1016 + 228] = mem[_1016]
                s = 0
                while s < 32 * mem[_1016]:
                    mem[s + _1016 + 260] = mem[s + _1016 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(vaultServiceAddress)
                call vaultServiceAddress.0x1f263f59 with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 0, 128, block.timestamp + 1, mem[_1016 + 228 len (32 * mem[_1016]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _1000 = mem[64]
    mem[mem[64] + 36] = 0
    _1001 = mem[64]
    mem[mem[64]] = 36
    mem[64] = mem[64] + 68
    mem[_1001 + 32 len 4] = 4122065833
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args mem[_1001 + 36 len mem[_1001] - 4]
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
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1000 + 373 len 31]
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
    emit CloseLeverage(ext_call.return_data[0], ext_call.return_data[32] - ext_call.return_data[0], 0, ext_call.return_data[0], msg.sender);
}



}
