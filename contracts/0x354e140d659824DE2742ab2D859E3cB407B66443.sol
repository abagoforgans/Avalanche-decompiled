contract main {




// =====================  Runtime code  =====================


address gameContractAddress;
address serverAddress;
array of struct stor2;
mapping of uint256 sub_d1c4598c;

function sub_d1c4598c(?) payable {
    require calldata.size - 4 >= 32
    return sub_d1c4598c[arg1]
}

function gameContract() payable {
    return gameContractAddress
}

function serverAddress() payable {
    return serverAddress
}

function _fallback() payable {
    revert
}

function sub_80bc8b24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if serverAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x2ddc2ab3: serverAddress, address(arg1)
    serverAddress = address(arg1)
}

function transferContractOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if gameContractAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit ContractOwnershipTransferred(gameContractAddress, arg1);
    gameContractAddress = arg1
}

function sub_13d114d2(?) payable {
    require calldata.size - 4 >= 160
    if serverAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2.length++
    stor2[stor2.length].field_0 = arg5
    require ext_code.size(gameContractAddress)
    call gameContractAddress.0x2295cd06 with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb9e30933: arg3, arg4, arg1, arg2
}

function sub_a0ef66dd(?) payable {
    require calldata.size - 4 >= 32
    if serverAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < stor2.length:
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        if arg1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[arg1].field_0 = stor2[stor2.length].field_0
        if not stor2.length:
            revert with 'NH{q', 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
}

function sub_5a1bde39(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if serverAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        stor2.length++
        mem[0] = 2
        stor2[stor2.length].field_0 = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a81d9bcc(?) payable {
    if stor2.length:
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while (32 * stor2.length) + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor2.length, data=mem[128 len 32 * stor2.length])
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    mem[(32 * stor2.length) + 192 len 32 * stor2.length] = mem[128 len 32 * stor2.length]
    return memory
      from (32 * stor2.length) + 128
       len (96 * stor2.length) + 64
}

function requestRandom(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if gameContractAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    if stor2.length < 1:
        revert with 'NH{q', 17
    if stor2.length - 1 >= stor2.length:
        revert with 'NH{q', 50
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    uint256(stor2.field_0) = stor2[stor2.length].field_0
    if not stor2.length:
        revert with 'NH{q', 49
    stor2[stor2.length].field_0 = 0
    stor2.length--
    if sub_d1c4598c[uint256(stor2.field_0)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RANDOM: The hash already exists !'
    sub_d1c4598c[uint256(stor2.field_0)] = arg1
    emit 0x5d1e2b1c: arg1, uint256(stor2.field_0)
    return uint256(stor2.field_0)
}



}
