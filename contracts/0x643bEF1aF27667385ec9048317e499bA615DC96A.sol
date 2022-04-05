contract main {




// =====================  Runtime code  =====================


const chef = 0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7


function _fallback() payable {
    revert
}

function sub_72cafc1a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while address(idx) != address(arg1):
        require ext_code.size(0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7)
        staticcall 0x52b8bb74cde6602ab9e6540e25e0a97f5b3226d7.0x1526fe27 with:
                gas gas_remaining wei
               args s
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_16] == mem[_16 + 12 len 20]
        if address(arg1) == mem[_16 + 12 len 20]:
            return s
        if s == -1:
            revert with 0, 17
        idx = mem[_16]
        s = s + 1
        continue 
    return s
}



}
