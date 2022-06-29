contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_d2609520Address;
mapping of address sub_3344a555;
mapping of address sub_1f278b74;
array of struct stor104;
address sub_e3fcd8d1Address;
uint256 stor5DF0;

function sub_1f278b74(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1f278b74[arg1]
}

function sub_3344a555(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3344a555[address(arg1)]
}

function sub_357719ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3344a555[arg1]
}

function sub_5b012546(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1f278b74[address(arg1)]
}

function owner() {
    return owner
}

function sub_d2609520(?) {
    return sub_d2609520Address
}

function sub_e3fcd8d1(?) {
    return address(sub_e3fcd8d1Address)
}

function _fallback() payable {
    revert
}

function canBorrow(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not sub_1f278b74[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_429c9a5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        if ext_code.size(address(arg1)) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set nftAddress to a non-contract instance'
        mem[164 len 64] = unknown_0x70a08231(?????), msg.sender, mem[164 len 28]
        call address(arg1).mem[164 len 4] with:
             gas gas_remaining wei
            args mem[168]
        if not ext_call.success:
            revert with 0, 'Contract has to support the ERC721 balanceOf() interface'
        if not return_data.size:
        else:
            if return_data.size <= 0:
                revert with 0, 'Contract has to support the ERC721 balanceOf() interface'
    uint256(stor5DF0) = arg1
}

function getAllLoans() {
    mem[64] = (32 * stor104.length) + 128
    mem[96] = stor104.length
    if not stor104.length:
        mem[(32 * stor104.length) + 128] = 32
        mem[(32 * stor104.length) + 160] = stor104.length
        idx = 0
        s = 128
        t = (32 * stor104.length) + 192
        while idx < stor104.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor104.length) + 128
           len (96 * stor104.length) + 64
    mem[128] = address(stor104.field_0)
    idx = 128
    s = 0
    while (32 * stor104.length) + 96 > idx:
        mem[idx + 32] = stor104[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor104.length) + 128] = 32
    mem[(32 * stor104.length) + 160] = stor104.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor104.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor104.length) + -mem[64] + 192
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    create contract with 0 wei
                    code: code.data[14394 len 2716], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d2609520Address = address(create.new_address)
    require ext_code.size(sub_d2609520Address)
    call sub_d2609520Address.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function sub_65ec1a45(?) {
    if sub_3344a555[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only one loan per owner is allowed'
    if address(sub_e3fcd8d1Address):
        require ext_code.size(address(sub_e3fcd8d1Address))
        staticcall address(sub_e3fcd8d1Address).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Access NFT required'
    create contract with 0 wei
                    code: code.data[10205 len 4189], sub_d2609520Address, 64, 36, 0, code.data[10205 len 28] >> 32, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3344a555[address(msg.sender)] = address(create.new_address)
    sub_1f278b74[address(create.new_address)] = msg.sender
    stor104.length++
    stor104[stor104.length].field_0 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x74f44067: 0, address(create.new_address), msg.sender
    return address(create.new_address)
}

function sub_e78fd931(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if sub_3344a555[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only one loan per owner is allowed'
    if not address(sub_e3fcd8d1Address):
        mem[132 len 4189] = code.data[10205 len 4189]
        mem[4321] = sub_d2609520Address
        mem[4353] = 64
        mem[4385] = 4
        mem[4417] = 0, code.data[10205 len 28]
        mem[4421] = 0
        create contract with 0 wei
                        code: code.data[10205 len 4189], sub_d2609520Address, 64, 4, 0, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_3344a555[address(msg.sender)] = address(create.new_address)
        sub_1f278b74[address(create.new_address)] = msg.sender
        stor104.length++
        stor104[stor104.length].field_0 = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).fund() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[168] = cd[4]
        mem[168 len 28] = Mask(224, 32, cd[4]) >> 32
        mem[164 len 4] = unknown_0xc5ebeaec(?????)
        if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
            revert with 'NH{q', 17
        if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
            revert with 'NH{q', 17
        if uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) > 65534:
            revert with 'NH{q', 17
        if uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) > 65470:
            revert with 'NH{q', 17
        mem[200] = uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 101
        idx = 0
        while idx < 36:
            mem[(32 * idx) + 232] = mem[(32 * idx) + 164]
            idx = idx + 1
            continue 
        mem[uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 333 len floor32(uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 132)] = mem[232 len 36], call.data[calldata.size + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) - 65 len uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 65], mem[uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 333 len floor32(uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 132) + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) - 101]
        call address(create.new_address).mem[uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 333 len 4] with:
             gas gas_remaining wei
            args mem[uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 337 len (2 * uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1)) + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 97]
        if not return_data.size:
            if not ext_call.success:
                revert with initialize()
        else:
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Proxy connector call failed'
    else:
        mem[100] = msg.sender
        require ext_code.size(address(sub_e3fcd8d1Address))
        staticcall address(sub_e3fcd8d1Address).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Access NFT required'
        mem[ceil32(return_data.size) + 96] = 4
        mem[ceil32(return_data.size) + 128 len 4] = initialize()
        mem[ceil32(return_data.size) + 132 len 4189] = code.data[10205 len 4189]
        mem[ceil32(return_data.size) + 4321] = sub_d2609520Address
        mem[ceil32(return_data.size) + 4353] = 64
        mem[ceil32(return_data.size) + 4385] = 4
        mem[ceil32(return_data.size) + 4417] = 0, code.data[10205 len 28]
        mem[ceil32(return_data.size) + 4421] = 0
        create contract with 0 wei
                        code: code.data[10205 len 4189], sub_d2609520Address, 64, 4, 0, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_3344a555[address(msg.sender)] = address(create.new_address)
        sub_1f278b74[address(create.new_address)] = msg.sender
        stor104.length++
        stor104[stor104.length].field_0 = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).fund() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 168] = cd[4]
        mem[ceil32(return_data.size) + 132] = 36
        mem[ceil32(return_data.size) + 168 len 28] = Mask(224, 32, cd[4]) >> 32
        mem[ceil32(return_data.size) + 164 len 4] = unknown_0xc5ebeaec(?????)
        if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
            revert with 'NH{q', 17
        if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
            revert with 'NH{q', 17
        if uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) > 65534:
            revert with 'NH{q', 17
        if uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) > 65470:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 200] = uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 101
        idx = 0
        while idx < 36:
            mem[ceil32(return_data.size) + (32 * idx) + 232] = mem[ceil32(return_data.size) + (32 * idx) + 164]
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 268 len uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 65] = call.data[calldata.size + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) - 65 len uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 65]
        mem[ceil32(return_data.size) + uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 333 len floor32(uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 132)] = mem[ceil32(return_data.size) + 232 len 36], call.data[calldata.size + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) - 65 len uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 65], mem[ceil32(return_data.size) + uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 333 len floor32(uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 132) + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) - 101]
        if floor32(uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 132) > uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 101:
            mem[ceil32(return_data.size) + (2 * uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1)) + 434] = 0
        call address(create.new_address).mem[ceil32(return_data.size) + uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 333 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 337 len (2 * uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1)) + -uint16(uint16((64 * uint8(cd[(calldata.size - 97)])) + 32) + 1) + 97]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'Proxy connector call failed'
        else:
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Proxy connector call failed'
        # ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x74f44067: msg.value, cd[4], address(create.new_address), msg.sender
    return address(create.new_address)
}



}
