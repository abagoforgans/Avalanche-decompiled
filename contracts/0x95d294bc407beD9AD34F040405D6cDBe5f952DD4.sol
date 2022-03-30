contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of address sub_5a2b6238;
array of struct stor2;
address stor3;

function sub_5a2b6238(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5a2b6238[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_c4803745(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(stor0.field_0)
    stor3 = address(arg1)
}

function sub_a1b837ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == address(stor0.field_0)
    if not arg1:
        Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg1))
}

function createAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_160):
        require msg.sender == stor3
    else:
        if arg1 != msg.sender:
            require msg.sender == stor3
    require not sub_5a2b6238[address(arg1)]
    create contract with 0 wei
                    code: code.data[2023 len 15442], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5a2b6238[address(arg1)] = address(create.new_address)
    stor2.length++
    stor2[stor2.length].field_0 = address(create.new_address)
    emit 0xdb8a74cc: address(arg1), address(create.new_address)
}

function getAccountList() {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}



}
