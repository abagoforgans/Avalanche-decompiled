contract main {




// =====================  Runtime code  =====================


address sub_62affb22Address;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct sub_5f94751c;
address sub_740c7f34Address;
address sub_0daf3706Address;

function sub_0daf3706(?) payable {
    return sub_0daf3706Address
}

function sub_5f94751c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_5f94751c.length
    return sub_5f94751c[arg1].field_0
}

function sub_62affb22(?) payable {
    return sub_62affb22Address
}

function sub_740c7f34(?) payable {
    return sub_740c7f34Address
}

function masters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function isMaster(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function setMaster(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only Master can call this.'
    stor1[address(arg1)] = 1
    emit 0xad9f645a: arg1
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only Master can call this.'
    stor2[address(arg1)] = 1
    emit 0xbd4b4e12: arg1
}

function sub_9fdf3e26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only Master can call this.'
    require stor2[address(arg1)]
    stor1[address(arg1)] = 0
}

function unsetManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only Master can call this.'
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
}

function sub_f6f4919a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'Only Manager can call this.'
    create contract with 0 wei
                    code: code.data[3853 len 9220], sub_740c7f34Address, sub_0daf3706Address, arg1, msg.sender, sub_62affb22Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5f94751c.length++
    sub_5f94751c[sub_5f94751c.length].field_0 = address(create.new_address)
    emit 0x33b83f3e: address(create.new_address)
    return address(create.new_address)
}

function sub_51de7147(?) payable {
    mem[64] = (32 * sub_5f94751c.length) + 128
    mem[96] = sub_5f94751c.length
    if not sub_5f94751c.length:
        mem[(32 * sub_5f94751c.length) + 128] = 32
        mem[(32 * sub_5f94751c.length) + 160] = sub_5f94751c.length
        idx = 0
        s = 128
        t = (32 * sub_5f94751c.length) + 192
        while idx < sub_5f94751c.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_5f94751c.length) + 128
           len (96 * sub_5f94751c.length) + 64
    mem[128] = address(sub_5f94751c.field_0)
    idx = 128
    s = 0
    while (32 * sub_5f94751c.length) + 96 > idx:
        mem[idx + 32] = sub_5f94751c[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_5f94751c.length) + 128] = 32
    mem[(32 * sub_5f94751c.length) + 160] = sub_5f94751c.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_5f94751c.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_5f94751c.length) + -mem[64] + 192
}



}
