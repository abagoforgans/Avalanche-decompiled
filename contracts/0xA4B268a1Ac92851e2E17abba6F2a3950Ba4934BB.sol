contract main {




// =====================  Runtime code  =====================


#
#  - deposit(bytes32 arg1, uint8 arg2, uint64 arg3, address arg4, bytes arg5)
#  - getDepositRecord(uint64 arg1, uint8 arg2)
#
address _bridgeAddress;
mapping of address _resourceIDToTokenContract;
mapping of uint256 _tokenContract;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of struct stor5;

function _resourceIDToTokenContractAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return _resourceIDToTokenContract[arg1]
}

function _bridgeAddress() payable {
    return _bridgeAddress
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

function setResource(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    _resourceIDToTokenContract[arg1] = arg2
    _tokenContract[address(arg2)] = arg1
    stor3[address(arg2)] = 1
}

function setBurnable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided contract is not whitelisted'
    stor4[address(arg1)] = 1
}

function fundERC721(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg2), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _depositRecords(uint8 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = stor5[arg1][arg2][2].field_0
    idx = 128
    s = 0
    while stor5[arg1][arg2][2].length + 96 > idx:
        mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor5[arg1][arg2][2].length) + 160] = stor5[arg1][arg2][5].field_0
    idx = ceil32(stor5[arg1][arg2][2].length) + 160
    s = 0
    while ceil32(stor5[arg1][arg2][2].length) + stor5[arg1][arg2][5].length + 128 > idx:
        mem[idx + 32] = stor5[arg1][arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor5[arg1][arg2][2].length) > stor5[arg1][arg2][2].length:
        mem[ceil32(stor5[arg1][arg2][2].length) + ceil32(stor5[arg1][arg2][5].length) + stor5[arg1][arg2][2].length + 448] = 0
    mem[(2 * ceil32(stor5[arg1][arg2][2].length)) + ceil32(stor5[arg1][arg2][5].length) + 448] = stor5[arg1][arg2][5].length
    mem[(2 * ceil32(stor5[arg1][arg2][2].length)) + ceil32(stor5[arg1][arg2][5].length) + 480 len ceil32(stor5[arg1][arg2][5].length)] = mem[ceil32(stor5[arg1][arg2][2].length) + 160 len ceil32(stor5[arg1][arg2][5].length)]
    if ceil32(stor5[arg1][arg2][5].length) > stor5[arg1][arg2][5].length:
        mem[(2 * ceil32(stor5[arg1][arg2][2].length)) + ceil32(stor5[arg1][arg2][5].length) + stor5[arg1][arg2][5].length + 480] = 0
    return stor5[arg1][arg2].field_0, 
           stor5[arg1][arg2].field_0,
           stor5[arg1][arg2].field_0,
           stor5[arg1][arg2].field_256,
           Array(len=stor5[arg1][arg2][2].length, data=mem[128 len ceil32(stor5[arg1][arg2][2].length)], stor5[arg1][arg2][5].length, mem[ceil32(stor5[arg1][arg2][2].length) + 160 len ceil32(stor5[arg1][arg2][5].length)]),
           stor5[arg1][arg2].field_768,
           stor5[arg1][arg2].field_1024,
           ceil32(stor5[arg1][arg2][2].length) + 288
}

function executeProposal(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    mem[96 len calldata.size + -('cd', 132)[4] - 164] = call.data[132 len calldata.size + -('cd', 132)[4] - 164]
    mem[64] = cd[132] + ('cd', 132)[4] + 224
    mem[cd[132] + 160 len calldata.size + -cd[132] - 164] = call.data[cd[132] + 164 len calldata.size + -cd[132] - 164]
    _4 = mem[128]
    if not stor3[stor1[arg1]]:
        revert with 0, 'provided tokenAddress is not whitelisted'
    mem[0] = _resourceIDToTokenContract[arg1]
    mem[32] = 4
    if not stor4[stor1[arg1]]:
        require ext_code.size(_resourceIDToTokenContract[arg1])
        call _resourceIDToTokenContract[arg1].transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), Mask(64, 96, mem[128]) << 96, cd[100]
    else:
        mem[cd[132] + ('cd', 132)[4] + 224] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
        mem[cd[132] + ('cd', 132)[4] + 228] = Mask(64, 96, _4) >> 96
        mem[cd[132] + ('cd', 132)[4] + 260] = cd[100]
        mem[cd[132] + ('cd', 132)[4] + 292] = 96
        mem[cd[132] + ('cd', 132)[4] + 324] = mem[cd[132] + 160]
        mem[cd[132] + ('cd', 132)[4] + 356 len ceil32(mem[cd[132] + 160])] = mem[cd[132] + 192 len ceil32(mem[cd[132] + 160])]
        if ceil32(mem[cd[132] + 160]) > mem[cd[132] + 160]:
            mem[cd[132] + ('cd', 132)[4] + mem[cd[132] + 160] + 356] = 0
        require ext_code.size(_resourceIDToTokenContract[arg1])
        call _resourceIDToTokenContract[arg1].mint(address rg1, uint256 rg2, string rg3) with:
             gas gas_remaining wei
            args Mask(64, 96, _4) << 96, cd[100], Array(len=mem[cd[132] + 160], data=mem[cd[132] + ('cd', 132)[4] + 356 len ceil32(mem[cd[132] + 160])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
