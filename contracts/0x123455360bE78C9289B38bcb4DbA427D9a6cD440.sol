contract main {




// =====================  Runtime code  =====================


address _bridgeAddress;
mapping of struct stor1;
mapping of address _resourceIDToContract;
mapping of uint256 _contract;
mapping of uint32 _contract;
mapping of uint256 sub_aa50800b;
mapping of uint32 _contract;
mapping of uint8 stor7;

function _bridgeAddress() payable {
    return _bridgeAddress
}

function _contractWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _contractAddressToExecuteFunctionSignature(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return Mask(32, 224, uint32(_contract[arg1]))
}

function sub_aa50800b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_aa50800b[arg1]
}

function _resourceIDToContractAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
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

function updateBridgeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if _bridgeAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the updated address is the same with the old'
    _bridgeAddress = arg1
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

function setResource(bytes32 arg1, address arg2, bytes4 arg3, uint256 arg4, bytes4 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == Mask(32, 224, arg3)
    require arg5 == Mask(32, 224, arg5)
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    _resourceIDToContract[arg1] = arg2
    _contract[address(arg2)] = arg1
    uint256(_contract[address(arg2)]) = uint32(arg3) >> 224 or Mask(224, 32, uint256(_contract[address(arg2)]))
    sub_aa50800b[address(arg2)] = arg4
    uint256(_contract[address(arg2)]) = uint32(arg5) >> 224 or Mask(224, 32, uint256(_contract[address(arg2)]))
    stor7[address(arg2)] = 1
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
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    require arg2.length >= 32
    require 32 <= cd[(arg2 + 36)] + 32
    require cd[(arg2 + 36)] + 32 <= arg2.length
    mem[128 len cd[(arg2 + 36)]] = call.data[arg2 + 68 len cd[(arg2 + 36)]]
    mem[cd[(arg2 + 36)] + 128] = 0
    if not stor7[stor2[arg1]]:
        revert with 0, 'provided contractAddress is not whitelisted'
    if Mask(32, 224, uint32(_contract[stor2[arg1]])):
        mem[ceil32(cd[(arg2 + 36)]) + 160] = Mask(32, 224, uint32(_contract[stor2[arg1]]))
        mem[ceil32(cd[(arg2 + 36)]) + 164 len ceil32(cd[(arg2 + 36)])] = call.data[arg2 + 68 len cd[(arg2 + 36)]], mem[cd[(arg2 + 36)] + 128 len ceil32(cd[(arg2 + 36)]) - cd[(arg2 + 36)]]
        if ceil32(cd[(arg2 + 36)]) <= cd[(arg2 + 36)]:
            mem[ceil32(cd[(arg2 + 36)]) + 128] = cd[(arg2 + 36)] + 4
            mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + 164 len ceil32(Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])])] = mem[ceil32(cd[(arg2 + 36)]) + 160 len ceil32(Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])])]
            if ceil32(Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])]) > Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])]:
                mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])] + 164] = 0
            call _resourceIDToContract[arg1].mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + 164 len 4] with:
                 gas gas_remaining wei
                args mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + 168 len Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])] - 4]
        else:
            mem[ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 164] = 0
            mem[ceil32(cd[(arg2 + 36)]) + 128] = cd[(arg2 + 36)] + 4
            mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + 164 len ceil32(Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])])] = mem[ceil32(cd[(arg2 + 36)]) + 160 len ceil32(Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])])]
            if ceil32(Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])]) > Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])]:
                mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])] + 164] = 0
            call _resourceIDToContract[arg1] with:
                 gas gas_remaining wei
                args mem[cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)]) + 168 len Mask(8 * -ceil32(cd[(arg2 + 36)]) + cd[(arg2 + 36)] + 32, 0, 0), mem[cd[(arg2 + 36)] + 160 len -cd[(arg2 + 36)] + ceil32(cd[(arg2 + 36)])] - 4]
        if not ext_call.success:
            revert with 0, 'delegatecall to contractAddress failed'
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
    require arg5.length >= 32
    require 32 <= cd[(arg5 + 36)] + 32
    require cd[(arg5 + 36)] + 32 <= arg5.length
    mem[128 len cd[(arg5 + 36)]] = call.data[arg5 + 68 len cd[(arg5 + 36)]]
    mem[cd[(arg5 + 36)] + 128] = 0
    if sub_aa50800b[stor2[arg1]]:
        if address(mem[sub_aa50800b[stor2[arg1]] + 128]) >> 96 != arg4:
            revert with 0, 'incorrect depositer in the data'
    if not stor7[stor2[arg1]]:
        revert with 0, 'provided contractAddress is not whitelisted'
    if Mask(32, 224, uint32(_contract[stor2[arg1]])):
        mem[ceil32(cd[(arg5 + 36)]) + 160] = Mask(32, 224, uint32(_contract[stor2[arg1]]))
        mem[ceil32(cd[(arg5 + 36)]) + 164 len ceil32(cd[(arg5 + 36)])] = call.data[arg5 + 68 len cd[(arg5 + 36)]], mem[cd[(arg5 + 36)] + 128 len ceil32(cd[(arg5 + 36)]) - cd[(arg5 + 36)]]
        if ceil32(cd[(arg5 + 36)]) <= cd[(arg5 + 36)]:
            mem[ceil32(cd[(arg5 + 36)]) + 128] = cd[(arg5 + 36)] + 4
            mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + 164 len ceil32(Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])])] = mem[ceil32(cd[(arg5 + 36)]) + 160 len ceil32(Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])])]
            if ceil32(Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])]) > Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])]:
                mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])] + 164] = 0
            call _resourceIDToContract[arg1].mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + 164 len 4] with:
                 gas gas_remaining wei
                args mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + 168 len Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])] - 4]
        else:
            mem[ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 164] = 0
            mem[ceil32(cd[(arg5 + 36)]) + 128] = cd[(arg5 + 36)] + 4
            mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + 164 len ceil32(Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])])] = mem[ceil32(cd[(arg5 + 36)]) + 160 len ceil32(Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])])]
            if ceil32(Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])]) > Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])]:
                mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])] + 164] = 0
            call _resourceIDToContract[arg1] with:
                 gas gas_remaining wei
                args mem[cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)]) + 168 len Mask(8 * -ceil32(cd[(arg5 + 36)]) + cd[(arg5 + 36)] + 32, 0, 0), mem[cd[(arg5 + 36)] + 160 len -cd[(arg5 + 36)] + ceil32(cd[(arg5 + 36)])] - 4]
        if not ext_call.success:
            revert with 0, 'call to contractAddress failed'
    stor1[arg2 << 248][arg3 << 192].field_0 = arg2
    stor1[arg2 << 248][arg3 << 192].field_8 = arg4
    stor1[arg2 << 248][arg3 << 192].field_256 = arg1
    stor1[arg2 << 248][arg3 << 192][2][].field_0 = Array(len=cd[(arg5 + 36)], data=call.data[arg5 + 68 len cd[(arg5 + 36)]])
}



}
