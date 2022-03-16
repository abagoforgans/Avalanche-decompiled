contract main {




// =====================  Runtime code  =====================


address _bridgeAddress;
mapping of struct stor1;
mapping of address _resourceIDToContract;
mapping of uint256 _contract;
mapping of uint32 _contract;
mapping of uint32 _contract;
mapping of uint8 stor6;

function _bridgeAddress() payable {
    return _bridgeAddress
}

function _contractWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function _contractAddressToExecuteFunctionSignature(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return Mask(32, 224, uint32(_contract[arg1]))
}

function _resourceIDToContractAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _resourceIDToContract[arg1]
}

function _contractAddressToDepositFunctionSignature(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return Mask(32, 224, uint32(_contract[arg1]))
}

function _contractAddressToResourceID(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contract[arg1]
}

function _fallback() payable {
    revert
}

function _depositRecords(uint8 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = stor1[arg1][arg2][2].field_0
    idx = 128
    s = 0
    while stor1[arg1][arg2][2].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[arg1][arg2].field_0, 
           stor1[arg1][arg2].field_0,
           stor1[arg1][arg2].field_256,
           Array(len=stor1[arg1][arg2][2].length, data=mem[128 len ceil32(stor1[arg1][arg2][2].length)])
}

function setResource(bytes32 arg1, address arg2, bytes4 arg3, bytes4 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(32, 224, arg3)
    require arg4 == Mask(32, 224, arg4)
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    _resourceIDToContract[arg1] = arg2
    _contract[address(arg2)] = arg1
    uint256(_contract[address(arg2)]) = uint32(arg3) >> 224 or Mask(224, 32, uint256(_contract[address(arg2)]))
    uint256(_contract[address(arg2)]) = uint32(arg4) >> 224 or Mask(224, 32, uint256(_contract[address(arg2)]))
    stor6[address(arg2)] = 1
}

function getDepositRecord(uint64 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[384] = stor1[arg2 << 248][arg1 << 192][2].field_0
    idx = 384
    s = 0
    while stor1[arg2 << 248][arg1 << 192][2].length + 352 > idx:
        mem[idx + 32] = stor1[arg2 << 248][arg1 << 192][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, stor1[arg2 << 248][arg1 << 192].field_0, 
           stor1[arg2 << 248][arg1 << 192].field_0,
           stor1[arg2 << 248][arg1 << 192].field_256,
           128,
           stor1[arg2 << 248][arg1 << 192][2].length,
           mem[384 len ceil32(stor1[arg2 << 248][arg1 << 192][2].length)]
}

function executeProposal(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    mem[96 len calldata.size - 100] = call.data[100 len calldata.size - 100]
    if not stor6[stor2[arg1]]:
        revert with 0, 'provided contractAddress is not whitelisted'
    if Mask(32, 224, uint32(_contract[stor2[arg1]])):
        mem[cd[100] + 224] = Mask(32, 224, uint32(_contract[stor2[arg1]]))
        mem[cd[100] + 228 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[cd[100] + mem[96] + 228] = 0
        mem[cd[100] + mem[96] + 228 len floor32(mem[96] + 35)] = 0, mem[cd[100] + 228 len floor32(mem[96] + 35) - 4]
        if floor32(mem[96] + 35) > mem[96] + 4:
            mem[cd[100] + (2 * mem[96]) + 232] = 0
        call _resourceIDToContract[arg1].mem[cd[100] + mem[96] + 228 len 4] with:
             gas gas_remaining wei
            args mem[cd[100] + mem[96] + 232 len mem[96]]
        if not ext_call.success:
            revert with 0, 'delegatecall to contractAddress failed'
}

function deposit(bytes32 arg1, uint8 arg2, uint64 arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    mem[96 len calldata.size - 196] = call.data[196 len calldata.size - 196]
    if not stor6[stor2[arg1]]:
        revert with 0, 'provided contractAddress is not whitelisted'
    if not Mask(32, 224, uint32(_contract[stor2[arg1]])):
        mem[cd[196] + 128] = arg2
        mem[cd[196] + 160] = arg4
        mem[cd[196] + 192] = arg1
        mem[cd[196] + 224] = 96
    else:
        mem[cd[196] + 160] = Mask(32, 224, uint32(_contract[stor2[arg1]]))
        mem[cd[196] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[cd[196] + mem[96] + 164] = 0
        mem[cd[196] + 128] = mem[96] + 4
        mem[cd[196] + mem[96] + 164 len floor32(mem[96] + 35)] = 0, mem[cd[196] + 164 len floor32(mem[96] + 35) - 4]
        if floor32(mem[96] + 35) > mem[96] + 4:
            mem[cd[196] + (2 * mem[96]) + 168] = 0
        call _resourceIDToContract[arg1].mem[cd[196] + mem[96] + 164 len 4] with:
             gas gas_remaining wei
            args mem[cd[196] + mem[96] + 168 len mem[96]]
        if not ext_call.success:
            revert with 0, 'delegatecall to contractAddress failed'
    stor1[arg2 << 248][arg3 << 192].field_0 = arg2
    stor1[arg2 << 248][arg3 << 192].field_8 = arg4
    stor1[arg2 << 248][arg3 << 192].field_256 = arg1
    stor1[arg2 << 248][arg3 << 192][2][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
}



}
