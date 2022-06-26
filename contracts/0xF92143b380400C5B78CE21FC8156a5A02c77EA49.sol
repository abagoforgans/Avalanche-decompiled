contract main {




// =====================  Runtime code  =====================


array of uint256 sub_5c41232d;
array of uint256 sub_236dba02;
uint256 stor2;
mapping of struct tokens;

function sub_236dba02(?) {
    return sub_236dba02[0 len sub_236dba02.length]
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = tokens[arg1][1].field_0
    idx = 128
    s = 0
    while tokens[arg1][1].length + 96 > idx:
        mem[idx + 32] = tokens[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tokens[arg1].field_0, 
           Array(len=tokens[arg1][1].length, data=mem[128 len tokens[arg1][1].length]),
           tokens[arg1].field_512,
           tokens[arg1].field_768,
           tokens[arg1].field_1024,
           tokens[arg1].field_1280
}

function sub_5c41232d(?) {
    return sub_5c41232d[0 len sub_5c41232d.length]
}

function _fallback() payable {
    revert
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'Transaction address invalid'
    if msg.value < tokens[stor2].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe476976656e2076616c7565206973206e6f7420656e6f75676820746f206275792074686973204e465420746f6b65,
                    mem[211 len 17]
    tokens[stor2].field_1024 = tokens[stor2].field_768
    tokens[stor2].field_768 = msg.sender or Mask(96, 160, tokens[stor2].field_768)
}

function sub_06bdc949(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender
    require stor2 < 20
    stor2++
    tokens[stor2 + 1].field_0 = stor2 + 1
    if arg1.length:
        tokens[stor2 + 1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        tokens[stor2 + 1].field_256 = 0
        idx = 0
        while tokens[stor2 + 1][1].length + 31 / 32 > idx:
            tokens[stor2 + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    tokens[stor2 + 1].field_512 = msg.sender or Mask(96, 160, tokens[stor2 + 1].field_512)
    tokens[stor2 + 1].field_768 = msg.sender or Mask(96, 160, tokens[stor2 + 1].field_768)
    tokens[stor2 + 1].field_1024 = 0
    tokens[stor2 + 1].field_1280 = arg2
}



}
