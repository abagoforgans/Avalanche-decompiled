contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor1;
array of struct sub_31c27fcb;
address sub_903f6795Address;

function sub_31c27fcb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_31c27fcb.length
    return sub_31c27fcb[arg1].field_0
}

function sub_903f6795(?) payable {
    return sub_903f6795Address
}

function isMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function addMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x724d61696e7461696e6572735265676973747279203a3a204f6e6c7920636f6e67726573732063616e20616464206d61696e7461696e65,
                    mem[219 len 9]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4d61696e7461696e65722063616e206e6f742062652030783020616464726573,
                    mem[197 len 31]
    if stor1[address(arg1)]:
        revert with 0, 'Maintainer already exists'
    sub_31c27fcb.length++
    sub_31c27fcb[sub_31c27fcb.length].field_0 = arg1
    stor1[address(arg1)] = 1
    emit MaintainerStatusChanged(arg1, 1);
}

function removeMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_903f6795Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x734d61696e7461696e6572735265676973747279203a3a204f6e6c7920636f6e67726573732063616e2072656d6f7665206d61696e7461696e65,
                    mem[222 len 6]
    if not stor1[address(arg1)]:
        revert with 0, 'Maintainer does not exists'
    require var10001 < sub_31c27fcb.length
    if sub_31c27fcb[var12001].field_0 == arg1:
        require sub_31c27fcb.length - 1 < sub_31c27fcb.length
        require var12004 < sub_31c27fcb.length
        sub_31c27fcb[var12004].field_0 = sub_31c27fcb[sub_31c27fcb.length].field_0
    else:
        require var12004 != sub_31c27fcb.length
        require var12004 + 1 < sub_31c27fcb.length
        idx = var12004
        while sub_31c27fcb[idx].field_256 != arg1:
            require idx + 1 != sub_31c27fcb.length
            require idx + 2 < sub_31c27fcb.length
            mem[0] = 2
            idx = idx + 1
            continue 
        require sub_31c27fcb.length - 1 < sub_31c27fcb.length
        require None + 3 < sub_31c27fcb.length
        sub_31c27fcb[None].field_768 = sub_31c27fcb[sub_31c27fcb.length].field_0
    require sub_31c27fcb.length
    sub_31c27fcb[sub_31c27fcb.length].field_0 = 0
    sub_31c27fcb.length--
    stor1[address(arg1)] = 0
    emit MaintainerStatusChanged(arg1, 0);
}

function initialize(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[(32 * arg1.length) + 242 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg2:
        revert with 0, 
                    32,
                    41,
                    0x73746f6b656e734661726d436f6e67726573732063616e206e6f742062652030783020616464726573,
                    mem[(32 * arg1.length) + 237 len 23]
    sub_903f6795Address = arg2
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor1[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Maintainer already exists'
        sub_31c27fcb.length++
        sub_31c27fcb[sub_31c27fcb.length].field_0 = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 1
        emit MaintainerStatusChanged(mem[(32 * idx) + 140 len 20], 1);
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
