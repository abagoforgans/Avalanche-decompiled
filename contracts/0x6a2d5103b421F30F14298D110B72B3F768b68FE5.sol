contract main {




// =====================  Runtime code  =====================


array of uint256 name;
uint256 postCount;
mapping of struct posts;

function name() {
    return name[0 len name.length]
}

function posts(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = posts[arg1][1].field_0
    idx = 128
    s = 0
    while posts[arg1][1].length + 96 > idx:
        mem[idx + 32] = posts[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return posts[arg1].field_0, 
           Array(len=posts[arg1][1].length, data=mem[128 len posts[arg1][1].length]),
           posts[arg1].field_512,
           posts[arg1].field_768
}

function postCount() {
    return postCount
}

function _fallback() payable {
    revert
}

function tipPost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= postCount
    mem[384] = posts[arg1][1].field_0
    idx = 384
    s = 0
    while posts[arg1][1].length + 352 > idx:
        mem[idx + 32] = posts[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call posts[arg1].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    posts[arg1][1][].field_0 = Array(len=posts[arg1][1].length, data=mem[384 len posts[arg1][1].length])
    posts[arg1].field_512 += msg.value
    posts[arg1].field_768 = posts[arg1].field_768
    emit 0x20988fe4: postCount, Array(len=posts[arg1][1].length, data=mem[384 len posts[arg1][1].length]), posts[arg1].field_512 + msg.value, posts[arg1].field_768
}

function createPost(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length > 0
    postCount++
    mem[ceil32(arg1.length) + 128] = postCount
    posts[stor1].field_0 = postCount
    posts[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    posts[stor1].field_512 = 0
    posts[stor1].field_768 = msg.sender
    mem[ceil32(arg1.length) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xc6633633: postCount, 128, 0, msg.sender, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
        emit 0xc6633633: postCount, 128, 0, msg.sender, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 416 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}
