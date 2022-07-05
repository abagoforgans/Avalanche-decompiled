contract main {




// =====================  Runtime code  =====================


mapping of uint256 users;
address cacheAddress;

function cache() {
    return cacheAddress
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function _fallback() payable {
    emit 0xeabb334f: msg.value, msg.sender, this.address
}

function add_user(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 1 == users[msg.sender]
    users[address(arg1)] = 1
}

function remove_user(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 1 == users[msg.sender]
    users[address(arg1)] = 0
}

function setCache(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 1 == users[msg.sender]
    if not arg1:
        revert with 0, 'ds-proxy-cache-address-required'
    cacheAddress = arg1
    return 1
}

function sub_eafd8332(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require 1 == users[msg.sender]
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require not delegate.return_code != 1
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require 1 == users[msg.sender]
    call 0x0 with:
       value arg1 wei
         gas gas_remaining wei
        args arg2[all]
    require not ext_call.success != 1
}

function sub_a9a3a391(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1 == users[msg.sender]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        users[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_2630bd67(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_7b8920df(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(cacheAddress)
    staticcall cacheAddress.0x8bf4515c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(cacheAddress)
        call cacheAddress.0x7ed0c3b2 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require 1 == users[msg.sender]
    delegate ext_call.return_data[0] with:
         gas gas_remaining wei
        args arg2[all]
    require not delegate.return_code != 1
}

function sub_f65e253b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 102] = 32
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 134] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 166 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 166] = 0
    require ext_code.size(cacheAddress)
    staticcall cacheAddress.0x8bf4515c with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        delegate ext_call.return_data[0] with:
             gas gas_remaining wei
            args arg2[all]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 102] = 32
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 134] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 166 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 166] = 0
    require ext_code.size(cacheAddress)
    call cacheAddress.0x7ed0c3b2 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    delegate ext_call.return_data[0] with:
         gas gas_remaining wei
        args arg2[all]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 99] = 32
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 131] = return_data.size
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 163 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + return_data.size + 130 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) > return_data.size:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 163] = 0
    return memory
      from ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 99
       len (4 * ceil32(return_data.size)) + 64
}



}
