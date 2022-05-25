contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function distribute(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe4164647265737320617272617920616e642076616c756573206172726179206d7573742062652073616d65206c656e6774,
                    mem[214 len 14]
    idx = 0
    s = 0
    while idx < arg2.length:
        if not address(cd[((32 * idx) + arg2 + 36)]):
            revert with 0, 'Address invalid'
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] <= 0:
            revert with 0, 'Value invalid'
        require idx < arg2.length
        require idx < arg3.length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + arg2 + 36)])
        mem[164] = 10^18 * cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), 10^18 * cd[((32 * idx) + arg3 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg3.length
        if s + cd[((32 * idx) + arg3 + 36)] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    emit 0xcc27ae92: arg2.length, s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length, arg1, msg.sender
    return 1
}



}
