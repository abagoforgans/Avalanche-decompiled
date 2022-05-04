contract main {




// =====================  Runtime code  =====================


mapping of address vault;
array of struct sub_9094a91e;
address reservePoolAddress;
address systemCoinAddress;
address sub_77a54a49Address;
uint128 stor1221; offset 160
address owner;
uint128 stor818A; offset 160
address stor818A;
address multiSignatureAddress;
uint128 storEE9B; offset 160
address storEE9B;

function reservePool() payable {
    return reservePoolAddress
}

function sub_2f0c17b8(?) payable {
    require calldata.size - 4 >= 32
    return vault[arg1]
}

function getMultiSignatureAddress() payable {
    return multiSignatureAddress
}

function sub_77a54a49(?) payable {
    return sub_77a54a49Address
}

function owner() payable {
    return owner
}

function sub_9094a91e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9094a91e.length
    return address(sub_9094a91e[arg1].field_0)
}

function systemCoin() payable {
    return systemCoinAddress
}

function getVault(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return vault[arg1]
}

function _fallback() payable {
    revert
}

function txOrigin() payable {
    return address(storEE9B.field_0), address(stor818A.field_0)
}

function isOwner() payable {
    if owner != msg.sender:
        return (msg.sender == owner)
    return bool(ext_code.size(msg.sender))
}

function sub_b40643a9(?) payable {
    if address(storEE9B.field_0) == msg.sender:
        return True
    return (address(stor818A.field_0) == msg.sender)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 73, code.data[23262 len 73], mem[237 len 23]
    if not ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 73, code.data[23262 len 73], mem[237 len 23]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    stor1221 = 0
}

function getAllVaults() payable {
    if not sub_9094a91e.length:
        mem[(32 * sub_9094a91e.length) + 128] = 32
        mem[(32 * sub_9094a91e.length) + 160] = sub_9094a91e.length
        mem[(32 * sub_9094a91e.length) + 192 len floor32(sub_9094a91e.length)] = mem[128 len floor32(sub_9094a91e.length)]
        return memory
          from (32 * sub_9094a91e.length) + 128
           len (96 * sub_9094a91e.length) + 64
    mem[128] = address(sub_9094a91e.field_0)
    idx = 128
    s = 0
    while (32 * sub_9094a91e.length) + 96 > idx:
        mem[idx + 32] = address(sub_9094a91e[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_9094a91e.length) + 192 len floor32(sub_9094a91e.length)] = mem[128 len floor32(sub_9094a91e.length)]
    return Array(len=sub_9094a91e.length, data=mem[128 len floor32(sub_9094a91e.length)], mem[(32 * sub_9094a91e.length) + floor32(sub_9094a91e.length) + 192 len (32 * sub_9094a91e.length) - floor32(sub_9094a91e.length)]), 
}

function sub_f6c1da1a(?) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[23475 len 40], mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 32, 46, code.data[23335 len 46], mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    emit OriginTransferred(arg1, arg2);
    if address(storEE9B.field_0) == arg1:
        address(storEE9B.field_0) = arg2
        Mask(96, 0, storEE9B.field_160) = 0
    else:
        if address(stor818A.field_0) != arg1:
            revert with 0, 32, 50, code.data[23425 len 50], mem[calldata.size + 318 len 14]
        address(stor818A.field_0) = arg2
        Mask(96, 0, stor818A.field_160) = 0
}

function sub_105e7004(?) payable {
    require calldata.size - 4 >= 288
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[23475 len 40], mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 32, 46, code.data[23335 len 46], mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    if vault[arg1]:
        revert with 0, 'this vault is already created!'
    create contract with 0 wei
                    code: code.data[8621 len 14641], multiSignatureAddress, address(storEE9B.field_0), address(stor818A.field_0), arg1, address(arg2), reservePoolAddress, systemCoinAddress, sub_77a54a49Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initContract(int256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) with:
         gas gas_remaining wei
        args arg6, arg7, arg3, arg4, arg5, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(systemCoinAddress)
    call systemCoinAddress.addAuthorization(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    vault[arg1] = address(create.new_address)
    sub_9094a91e.length++
    address(sub_9094a91e[sub_9094a91e.length].field_0) = address(create.new_address)
    emit CreateVaultPool(arg3, arg4, arg5, arg6, arg7, address(create.new_address), arg1, arg2);
    return address(create.new_address)
}

function sub_47647550(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0, 32, 40, code.data[23475 len 40], mem[ceil32(arg1.length) + ceil32(arg2.length) + 268 len 24]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = address(msg.sender)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 212] = address(this.address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 232] = msg.value
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 264 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = calldata.size + 72
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 264
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.0x1ebaa166 with:
            gas gas_remaining wei
           args sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]), stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])]:
        revert with 0, 32, 46, code.data[23335 len 46], mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 378 len 18]
    stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])] = ext_call.return_data[0]
    if systemCoinAddress:
        revert with 0, 32, 44, code.data[23381 len 44], mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 376 len 20]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 264 len 4567] = code.data[4054 len 4567]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4831] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4895] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4927 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4863] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4927] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4959 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 264 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 4695]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4959] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 4991 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 264 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 4727]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4927] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + -(arg1.length % 32) + 4959 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4863] = floor32(arg1.length) + 128
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4959] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4991 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 264 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 4727]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 4991] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 5023 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + calldata.size + 264 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 4759]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    systemCoinAddress = address(create.new_address)
    emit 0xfd4f165d: msg.sender, address(create.new_address)
}



}
