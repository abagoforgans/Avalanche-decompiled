contract main {




// =====================  Runtime code  =====================


#
#  - fundERC20(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, address arg2, uint256 arg3)
#
const sub_67d81740(?) = 10000


address _bridgeAddress;
mapping of address _resourceIDToTokenContract;
mapping of uint256 _tokenContract;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 _feePercent;
uint32 stor6;
address sub_0b6b82e4Address;
uint256 stor6;
mapping of struct stor7;

function _resourceIDToTokenContractAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return _resourceIDToTokenContract[arg1]
}

function sub_0b6b82e4(?) payable {
    return address(sub_0b6b82e4Address)
}

function _bridgeAddress() payable {
    return _bridgeAddress
}

function _feePercent() payable {
    return _feePercent
}

function _burnList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _contractWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _tokenContractAddressToResourceID(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _tokenContract[arg1]
}

function _fallback() payable {
    revert
}

function setFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if arg1 >= 10000:
        revert with 0, 'feePercent too large'
    _feePercent = arg1
}

function setFeePercentTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if not arg1:
        revert with 0, 'new treasury is null'
    address(sub_0b6b82e4Address) = arg1
}

function setResource(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    _resourceIDToTokenContract[arg1] = arg2
    _tokenContract[address(arg2)] = arg1
    stor3[address(arg2)] = 1
}

function setBurnable(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided contract is not whitelisted'
    stor4[address(arg1)] = uint8(arg2)
}

function _depositRecords(uint8 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = stor7[arg1][arg2][2].field_0
    idx = 128
    s = 0
    while stor7[arg1][arg2][2].length + 96 > idx:
        mem[idx + 32] = stor7[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor7[arg1][arg2].field_0, 
           stor7[arg1][arg2].field_0,
           stor7[arg1][arg2].field_0,
           stor7[arg1][arg2].field_256,
           Array(len=stor7[arg1][arg2][2].length, data=mem[128 len ceil32(stor7[arg1][arg2][2].length)]),
           stor7[arg1][arg2].field_768,
           stor7[arg1][arg2].field_1024
}

function getDepositRecord(uint64 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[576] = stor7[arg2 << 248][arg1 << 192][2].field_0
    idx = 576
    s = 0
    while stor7[arg2 << 248][arg1 << 192][2].length + 544 > idx:
        mem[idx + 32] = stor7[arg2 << 248][arg1 << 192][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, stor7[arg2 << 248][arg1 << 192].field_0, 
           stor7[arg2 << 248][arg1 << 192].field_0,
           stor7[arg2 << 248][arg1 << 192].field_0,
           stor7[arg2 << 248][arg1 << 192].field_256,
           224,
           stor7[arg2 << 248][arg1 << 192].field_768,
           stor7[arg2 << 248][arg1 << 192].field_1024,
           stor7[arg2 << 248][arg1 << 192][2].length,
           mem[576 len ceil32(stor7[arg2 << 248][arg1 << 192][2].length)]
}

function deposit(bytes32 arg1, uint8 arg2, uint64 arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    mem[96 len calldata.size - 14] = call.data[228 len calldata.size - 14]
    if not stor3[stor1[arg1]]:
        revert with 0, 'provided tokenAddress is not whitelisted'
    if stor4[stor1[arg1]]:
        require ext_code.size(_resourceIDToTokenContract[arg1])
        call _resourceIDToTokenContract[arg1].burnFrom(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg4), cd[196]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[cd[228] + 128] = _resourceIDToTokenContract[arg1]
        mem[cd[228] + 160] = uint8(cd[228])
        mem[cd[228] + 192] = arg2
        mem[cd[228] + 224] = arg1
        mem[cd[228] + 256] = 96
        mem[cd[228] + 288] = arg4
        mem[cd[228] + 320] = cd[196]
    else:
        mem[cd[228] + 164] = arg4
        mem[cd[228] + 196] = this.address
        mem[cd[228] + 228] = cd[196]
        mem[cd[228] + 128] = 100
        mem[cd[228] + 164 len 28] = address(arg4) << 64
        mem[cd[228] + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[cd[228] + 260 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), address(arg4) << 64, 0, address(this.address), cd[196], mem[cd[228] + 260 len 28]
        mem[cd[228] + 360] = 0
        call _resourceIDToTokenContract[arg1].mem[cd[228] + 260 len 4] with:
             gas gas_remaining wei
            args mem[cd[228] + 264 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'ERC20: call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'ERC20: operation did not succeed'
            mem[cd[228] + 260] = _resourceIDToTokenContract[arg1]
            mem[cd[228] + 292] = uint8(cd[228])
            mem[cd[228] + 324] = arg2
            mem[cd[228] + 356] = arg1
            mem[cd[228] + 388] = 96
            mem[cd[228] + 420] = arg4
            mem[cd[228] + 452] = cd[196]
        else:
            mem[cd[228] + 260] = return_data.size
            mem[cd[228] + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'ERC20: call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[cd[228] + 292] == bool(mem[cd[228] + 292])
                if not mem[cd[228] + 292]:
                    revert with 0, 'ERC20: operation did not succeed'
            mem[cd[228] + ceil32(return_data.size) + 261] = _resourceIDToTokenContract[arg1]
            mem[cd[228] + ceil32(return_data.size) + 293] = uint8(cd[228])
            mem[cd[228] + ceil32(return_data.size) + 325] = arg2
            mem[cd[228] + ceil32(return_data.size) + 357] = arg1
            mem[cd[228] + ceil32(return_data.size) + 389] = 96
            mem[cd[228] + ceil32(return_data.size) + 421] = arg4
            mem[cd[228] + ceil32(return_data.size) + 453] = cd[196]
    stor7[arg2 << 248][arg3 << 192].field_0 = _resourceIDToTokenContract[arg1]
    stor7[arg2 << 248][arg3 << 192].field_160 = uint8(cd[228])
    stor7[arg2 << 248][arg3 << 192].field_168 = arg2
    stor7[arg2 << 248][arg3 << 192].field_256 = arg1
    stor7[arg2 << 248][arg3 << 192][2][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    stor7[arg2 << 248][arg3 << 192].field_768 = arg4
    stor7[arg2 << 248][arg3 << 192].field_1024 = cd[196]
}

function executeProposal(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    mem[96 len calldata.size - 132] = call.data[132 len calldata.size - 132]
    _4 = mem[128]
    if not stor3[stor1[arg1]]:
        revert with 0, 'provided tokenAddress is not whitelisted'
    mem[cd[132] + 128] = 30
    if cd[100] / 10000 * _feePercent > cd[100]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor4[stor1[arg1]]:
        require ext_code.size(_resourceIDToTokenContract[arg1])
        if cd[100] / 10000 * _feePercent:
            call _resourceIDToTokenContract[arg1].mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(sub_0b6b82e4Address), cd[100] / 10000 * _feePercent
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call _resourceIDToTokenContract[arg1].mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args Mask(64, 96, _4) << 96, cd[100] - (cd[100] / 10000 * _feePercent)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not cd[100] / 10000 * _feePercent:
            mem[cd[132] + 292 len 96] = transfer(address rg1, uint256 rg2), Mask(64, 96, _4) << 64, 0, cd[100] - (cd[100] / 10000 * _feePercent), mem[cd[132] + 292 len 28]
            call _resourceIDToTokenContract[arg1].mem[cd[132] + 292 len 4] with:
                 gas gas_remaining wei
                args mem[cd[132] + 296 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ERC20: call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'ERC20: operation did not succeed'
            else:
                mem[cd[132] + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ERC20: call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[cd[132] + 324] == bool(mem[cd[132] + 324])
                    if not mem[cd[132] + 324]:
                        revert with 0, 'ERC20: operation did not succeed'
        else:
            mem[cd[132] + 292 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), cd[100] / 10000 * _feePercent, mem[cd[132] + 292 len 28]
            call _resourceIDToTokenContract[arg1].mem[cd[132] + 292 len 4] with:
                 gas gas_remaining wei
                args mem[cd[132] + 296 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'ERC20: call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'ERC20: operation did not succeed'
                mem[cd[132] + 392 len 96] = 0, Mask(64, 96, _4) << 96, cd[100] - (cd[100] / 10000 * _feePercent), mem[cd[132] + 392 len 28]
                call _resourceIDToTokenContract[arg1].mem[cd[132] + 392 len 4] with:
                     gas gas_remaining wei
                    args mem[cd[132] + 396 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ERC20: call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'ERC20: operation did not succeed'
                else:
                    mem[cd[132] + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ERC20: call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[cd[132] + 424] == bool(mem[cd[132] + 424])
                        if not mem[cd[132] + 424]:
                            revert with 0, 'ERC20: operation did not succeed'
            else:
                mem[cd[132] + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'ERC20: call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[cd[132] + 324] == bool(mem[cd[132] + 324])
                    if not mem[cd[132] + 324]:
                        revert with 0, 'ERC20: operation did not succeed'
                mem[cd[132] + ceil32(return_data.size) + 393 len 96] = 0, Mask(64, 96, _4) << 96, cd[100] - (cd[100] / 10000 * _feePercent), mem[cd[132] + ceil32(return_data.size) + 393 len 28]
                call _resourceIDToTokenContract[arg1].mem[cd[132] + ceil32(return_data.size) + 393 len 4] with:
                     gas gas_remaining wei
                    args mem[cd[132] + ceil32(return_data.size) + 397 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ERC20: call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'ERC20: operation did not succeed'
                else:
                    mem[cd[132] + ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ERC20: call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[cd[132] + ceil32(return_data.size) + 425] == bool(mem[cd[132] + ceil32(return_data.size) + 425])
                        if not mem[cd[132] + ceil32(return_data.size) + 425]:
                            revert with 0, 'ERC20: operation did not succeed'
}



}
