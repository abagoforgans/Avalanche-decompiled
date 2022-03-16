contract main {




// =====================  Runtime code  =====================


const EXPIRED = 4

const INVALID = 0

const REFUNDED = 2

const WITHDRAWN = 3

const ACTIVE = 1


mapping of struct stor0;

function _fallback() payable {
    revert
}

function refund(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_768 != 1:
        revert with 0, 'SWAP_NOT_ACTIVE'
    if stor0[arg1].field_512 > block.timestamp:
        revert with 0, 'INVALID_TIME'
    stor0[arg1].field_768 = 2
    call stor0[arg1].field_1280 with:
       value stor0[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fa50d56: stor0[arg1].field_1024, arg1, stor0[arg1].field_1280, stor0[arg1].field_1536
}

function withdraw(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[arg1].field_768 != 1:
        revert with 0, 'SWAP_NOT_ACTIVE'
    if stor0[arg1].field_512 <= block.timestamp:
        revert with 0, 'INVALID_TIME'
    hash = sha256hash(arg2) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    if stor0[arg1].field_1024 != hash:
        revert with 0, 'INVALID_SECRET'
    stor0[arg1].field_768 = 3
    call stor0[arg1].field_1536 with:
       value stor0[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2d3a5ed1: arg2, stor0[arg1].field_1024, arg1, stor0[arg1].field_1280, stor0[arg1].field_1536
}

function contracts(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor0[arg1][7].field_0
    idx = 128
    s = 0
    while stor0[arg1][7].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 7].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][7].length) + 160] = stor0[arg1][8].field_0
    idx = ceil32(stor0[arg1][7].length) + 160
    s = 0
    while ceil32(stor0[arg1][7].length) + stor0[arg1][8].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor0[arg1][7].length) > stor0[arg1][7].length:
        mem[ceil32(stor0[arg1][7].length) + ceil32(stor0[arg1][8].length) + stor0[arg1][7].length + 480] = 0
    mem[(2 * ceil32(stor0[arg1][7].length)) + ceil32(stor0[arg1][8].length) + 480] = stor0[arg1][8].length
    mem[(2 * ceil32(stor0[arg1][7].length)) + ceil32(stor0[arg1][8].length) + 512 len ceil32(stor0[arg1][8].length)] = mem[ceil32(stor0[arg1][7].length) + 160 len ceil32(stor0[arg1][8].length)]
    if ceil32(stor0[arg1][8].length) > stor0[arg1][8].length:
        mem[(2 * ceil32(stor0[arg1][7].length)) + ceil32(stor0[arg1][8].length) + stor0[arg1][8].length + 512] = 0
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           Array(len=stor0[arg1][7].length, data=mem[128 len ceil32(stor0[arg1][7].length)], stor0[arg1][8].length, mem[ceil32(stor0[arg1][7].length) + 160 len ceil32(stor0[arg1][8].length)]),
           ceil32(stor0[arg1][7].length) + 320
}

function newContract(uint256 arg1, uint256 arg2, bytes32 arg3, address arg4, string arg5, string arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if arg2 <= block.timestamp:
        revert with 0, 'INVALID_TIME'
    if msg.value <= 0:
        revert with 0, 'INVALID_AMOUNT'
    mem[264 len 160] = msg.sender, arg4, msg.value, arg3, arg2, mem[264 len 24]
    hash = sha256hash(mem[264 len 136]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    if stor0[hash].field_768:
        revert with 0, 'SWAP_EXISTS'
    stor0[hash].field_0 = msg.value
    stor0[hash].field_256 = arg1
    stor0[hash].field_512 = arg2
    stor0[hash].field_768 = 1
    stor0[hash].field_1024 = arg3
    stor0[hash].field_1280 = msg.sender
    stor0[hash].field_1536 = arg4
    stor0[hash][7][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor0[hash][8][].field_0 = Array(len=arg6.length, data=arg6[all])
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 616] = msg.value
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 648] = arg1
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 680] = arg2
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 712] = arg3
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 744] = 192
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 808] = arg5.length
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 840 len arg5.length] = arg5[all]
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + arg5.length + 840] = 0
    mem[ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 776] = ceil32(arg5.length) + 224
    mem[ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + 840] = arg6.length
    mem[ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + 872 len arg6.length] = arg6[all]
    mem[ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + arg6.length + 872] = 0
    emit 0x767d0ffb: Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 648 len ceil32(arg5.length) + (2 * ceil32(arg6.length)) + -arg6.length + 224], hash, msg.sender, arg4
}



}
