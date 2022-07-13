contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint8 stor0;

function sub_000016a8(?) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_00009a4c(?) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_00002c91(?) {
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_00009bcb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + 68
    s = 128
    while idx < arg4 + cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 68)] + 68
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < arg4 + cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 100)] + 67
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99 < 98 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130
    idx = arg4 + cd[(arg4 + 100)] + 68
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if cd[(arg4 + 132)] == cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        idx = 0
        while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _173 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98]:
                revert with 'NH{q', 50
            _178 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = _178
            call address(_173).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _178
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_182] == bool(mem[_182])
            idx = idx + 1
            continue 
    else:
        if 1 > !cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 131] = 128
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 259] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        idx = 0
        s = 128
        t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 291
        while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 163] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 291] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
        t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 323
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 195] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 323] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 355 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 227] = cd[(arg4 + 132)] + 1
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224
        if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            revert with 'NH{q', 50
        if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * cd[(arg4 + 132)]) + 140 len 20])
        if mem[(32 * cd[(arg4 + 132)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 141 len 20] >= mem[(32 * cd[(arg4 + 132)] + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 141 len 20]:
            call mem[(32 * cd[(arg4 + 132)]) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[(32 * cd[(arg4 + 132)] + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130], 0, address(this.address), 128, (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224, mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 131 len floor32((32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 31) + 7]
        else:
            call mem[(32 * cd[(arg4 + 132)]) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[(32 * cd[(arg4 + 132)] + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130], address(this.address), 128, (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224, mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 131 len floor32((32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 31) + 7]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + 68
    s = 128
    while idx < arg4 + cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 68)] + 68
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < arg4 + cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 100)] + 67
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99 < 98 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130
    idx = arg4 + cd[(arg4 + 100)] + 68
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if cd[(arg4 + 132)] == cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        idx = 0
        while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _173 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98]:
                revert with 'NH{q', 50
            _178 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = _178
            call address(_173).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _178
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_182] == bool(mem[_182])
            idx = idx + 1
            continue 
    else:
        if 1 > !cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 131] = 128
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 259] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        idx = 0
        s = 128
        t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 291
        while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 163] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 291] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
        t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 323
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 195] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 323] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 355 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 227] = cd[(arg4 + 132)] + 1
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 99] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224
        if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if cd[(arg4 + 132)] >= cd[(arg4 + cd[(arg4 + 36)] + 36)]:
            revert with 'NH{q', 50
        if cd[(arg4 + 132)] + 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * cd[(arg4 + 132)]) + 140 len 20])
        if mem[(32 * cd[(arg4 + 132)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 141 len 20] >= mem[(32 * cd[(arg4 + 132)] + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 141 len 20]:
            call mem[(32 * cd[(arg4 + 132)]) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[(32 * cd[(arg4 + 132)] + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130], 0, address(this.address), 128, (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224, mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 131 len floor32((32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 31) + 7]
        else:
            call mem[(32 * cd[(arg4 + 132)]) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[(32 * cd[(arg4 + 132)] + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 130], address(this.address), 128, (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224, mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 131 len floor32((32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 31) + 7]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_0000d86d(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 36).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length + 1 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 36).length + 1
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192
    if not ('cd', 36).length + 1:
        if 0 >= ('cd', 36).length + 1:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[4]
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < ('cd', 36).length:
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _121 = mem[_109]
            require mem[_109] == mem[_109 + 18 len 14]
            _124 = mem[_109 + 32]
            require mem[_109 + 32] == mem[_109 + 50 len 14]
            require mem[_109 + 64] == mem[_109 + 92 len 4]
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                if not Mask(112, 0, 1000 * mem[_109 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[_109 + 18 len 14] / Mask(112, 0, 1000 * mem[_109 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])
            else:
                if not Mask(112, 0, 1000 * mem[_109]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[_109 + 50 len 14] / Mask(112, 0, 1000 * mem[_109]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])
            idx = idx + 1
            s = _124
            s = _121
            s = idx + 1
            continue 
        if 0 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] - 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] + cd[100]:
            revert with 0, 'ERROR_05_1'
        _116 = mem[64]
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 192
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 160
        mem[mem[64] + (32 * ('cd', 36).length) + 192] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + (32 * ('cd', 36).length) + 224
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        _216 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]]
        mem[mem[64] + 128] = 1
        _252 = mem[64]
        mem[mem[64]] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 224
        mem[64] = mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 256
        if 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[1] == address(('cd', 68)[1])
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        if 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if address(('cd', 68)[0]) >= address(('cd', 68)[1]):
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 260] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 292] = 0
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 324] = this.address
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 356] = 128
            _266 = mem[_252]
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 388] = mem[_252]
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 420 len ceil32(_266)] = mem[_252 + 32 len ceil32(_266)]
            if ceil32(_266) > _266:
                mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + _266 + 420] = 0
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224], 0, address(this.address), 128, mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 388 len ceil32(_266) + 32]
        else:
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 260] = 0
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 292] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 324] = this.address
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 356] = 128
            _267 = mem[_252]
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 388] = mem[_252]
            mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 420 len ceil32(_267)] = mem[_252 + 32 len ceil32(_267)]
            if ceil32(_267) > _267:
                mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + _267 + 420] = 0
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224], address(this.address), 128, mem[_116 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _216) + 388 len ceil32(_267) + 32]
    else:
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
        if 0 >= ('cd', 36).length + 1:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[4]
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < ('cd', 36).length:
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _123 = mem[_113]
            require mem[_113] == mem[_113 + 18 len 14]
            _125 = mem[_113 + 32]
            require mem[_113 + 32] == mem[_113 + 50 len 14]
            require mem[_113 + 64] == mem[_113 + 92 len 4]
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                if not Mask(112, 0, 1000 * mem[_113 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[_113 + 18 len 14] / Mask(112, 0, 1000 * mem[_113 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])
            else:
                if not Mask(112, 0, 1000 * mem[_113]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[_113 + 50 len 14] / Mask(112, 0, 1000 * mem[_113]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192])
            idx = idx + 1
            s = _125
            s = _123
            s = idx + 1
            continue 
        if 0 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] - 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] + cd[100]:
            revert with 0, 'ERROR_05_1'
        _118 = mem[64]
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 192
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 160
        mem[mem[64] + (32 * ('cd', 36).length) + 192] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + (32 * ('cd', 36).length) + 224
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        _217 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]]
        mem[mem[64] + 128] = 1
        _253 = mem[64]
        mem[mem[64]] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 224
        mem[64] = mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 256
        if 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[1] == address(('cd', 68)[1])
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        if 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if address(('cd', 68)[0]) >= address(('cd', 68)[1]):
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 260] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 292] = 0
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 324] = this.address
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 356] = 128
            _268 = mem[_253]
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 388] = mem[_253]
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 420 len ceil32(_268)] = mem[_253 + 32 len ceil32(_268)]
            if ceil32(_268) > _268:
                mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + _268 + 420] = 0
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224], 0, address(this.address), 128, mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 388 len ceil32(_268) + 32]
        else:
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 260] = 0
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 292] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 324] = this.address
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 356] = 128
            _269 = mem[_253]
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 388] = mem[_253]
            mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 420 len ceil32(_269)] = mem[_253 + 32 len ceil32(_269)]
            if ceil32(_269) > _269:
                mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + _269 + 420] = 0
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224], address(this.address), 128, mem[_118 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _217) + 388 len ceil32(_269) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0000e3ac(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] = ('cd', 68).length
    mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + 192
    if not ('cd', 68).length:
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = cd[4]
        idx = ('cd', 68).length - 1
        s = 0
        s = 0
        s = 0
        while idx:
            if idx - 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx - 1) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _162 = mem[_155]
            require mem[_155] == mem[_155 + 18 len 14]
            require mem[_155 + 32] == mem[_155 + 50 len 14]
            require mem[_155 + 64] == mem[_155 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 50
            if mem[(32 * idx - 1) + 140 len 20] >= mem[(32 * idx) + 140 len 20]:
                if not (997 * mem[_155 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[_155 + 50 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] / (997 * mem[_155 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])) + 1
            else:
                if not (997 * mem[_155 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[_155 + 18 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] / (997 * mem[_155 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])) + 1
            idx = idx - 1
            s = mem[_155 + 32]
            s = _162
            s = idx - 1
            continue 
        if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] > cd[36]:
            revert with 0, 'ERROR_03'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        _186 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 4] = address(('cd', 100)[0])
        mem[mem[64] + 36] = _186
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), _186
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_196] == bool(mem[_196])
        _200 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_200] = ('cd', 68).length
        mem[_200 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_200 + (32 * ('cd', 68).length) + 32] = 0
        _201 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_201] = ('cd', 100).length
        mem[_201 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_201 + (32 * ('cd', 100).length) + 32] = 0
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        while idx < ('cd', 68).length - 1:
            if idx + 1 >= mem[_200]:
                revert with 'NH{q', 50
            if idx >= mem[_200]:
                revert with 'NH{q', 50
            if idx >= mem[_201]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _200 + 44 len 20] >= mem[(32 * idx + 1) + _200 + 44 len 20]:
                _290 = mem[(32 * idx) + _201 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _298 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _307 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_307 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_307 + 36] = _298
                    mem[_307 + 68] = 0
                    mem[_307 + 100] = this.address
                    mem[_307 + 132] = 128
                    mem[_307 + 164] = mem[_307]
                    s = 0
                    while s < mem[_307]:
                        mem[s + _307 + 196] = mem[s + _307 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_307]) > mem[_307]:
                        mem[_307 + mem[_307] + 196] = 0
                    require ext_code.size(address(_290))
                    call address(_290).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _298, 0, address(this.address), 128, mem[_307], mem[_307 + 196 len ceil32(mem[_307])]
                else:
                    if idx + 1 >= mem[_201]:
                        revert with 'NH{q', 50
                    _306 = mem[(32 * idx + 1) + _201 + 32]
                    _314 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_314 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_314 + 36] = _298
                    mem[_314 + 68] = 0
                    mem[_314 + 100] = address(_306)
                    mem[_314 + 132] = 128
                    mem[_314 + 164] = mem[_314]
                    s = 0
                    while s < mem[_314]:
                        mem[s + _314 + 196] = mem[s + _314 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_314]) > mem[_314]:
                        mem[_314 + mem[_314] + 196] = 0
                    require ext_code.size(address(_290))
                    call address(_290).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _298, 0, address(_306), 128, mem[_314], mem[_314 + 196 len ceil32(mem[_314])]
            else:
                _292 = mem[(32 * idx) + _201 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _299 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _309 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_309 + 36] = 0
                    mem[_309 + 68] = _299
                    mem[_309 + 100] = this.address
                    mem[_309 + 132] = 128
                    mem[_309 + 164] = mem[_309]
                    s = 0
                    while s < mem[_309]:
                        mem[s + _309 + 196] = mem[s + _309 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_309]) > mem[_309]:
                        mem[_309 + mem[_309] + 196] = 0
                    require ext_code.size(address(_292))
                    call address(_292).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _299, address(this.address), 128, mem[_309], mem[_309 + 196 len ceil32(mem[_309])]
                else:
                    if idx + 1 >= mem[_201]:
                        revert with 'NH{q', 50
                    _308 = mem[(32 * idx + 1) + _201 + 32]
                    _316 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_316 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_316 + 36] = 0
                    mem[_316 + 68] = _299
                    mem[_316 + 100] = address(_308)
                    mem[_316 + 132] = 128
                    mem[_316 + 164] = mem[_316]
                    s = 0
                    while s < mem[_316]:
                        mem[s + _316 + 196] = mem[s + _316 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_316]) > mem[_316]:
                        mem[_316 + mem[_316] + 196] = 0
                    require ext_code.size(address(_292))
                    call address(_292).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _299, address(_308), 128, mem[_316], mem[_316 + 196 len ceil32(mem[_316])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = cd[4]
        idx = ('cd', 68).length - 1
        s = 0
        s = 0
        s = 0
        while idx:
            if idx - 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx - 1) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _163 = mem[_157]
            require mem[_157] == mem[_157 + 18 len 14]
            require mem[_157 + 32] == mem[_157 + 50 len 14]
            require mem[_157 + 64] == mem[_157 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 50
            if mem[(32 * idx - 1) + 140 len 20] >= mem[(32 * idx) + 140 len 20]:
                if not (997 * mem[_157 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[_157 + 50 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] / (997 * mem[_157 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])) + 1
            else:
                if not (997 * mem[_157 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = (1000 * mem[_157 + 18 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] / (997 * mem[_157 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])) + 1
            idx = idx - 1
            s = mem[_157 + 32]
            s = _163
            s = idx - 1
            continue 
        if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] > cd[36]:
            revert with 0, 'ERROR_03'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        _188 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 4] = address(('cd', 100)[0])
        mem[mem[64] + 36] = _188
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), _188
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_197] == bool(mem[_197])
        _202 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_202] = ('cd', 68).length
        mem[_202 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_202 + (32 * ('cd', 68).length) + 32] = 0
        _203 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_203] = ('cd', 100).length
        mem[_203 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_203 + (32 * ('cd', 100).length) + 32] = 0
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        while idx < ('cd', 68).length - 1:
            if idx + 1 >= mem[_202]:
                revert with 'NH{q', 50
            if idx >= mem[_202]:
                revert with 'NH{q', 50
            if idx >= mem[_203]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _202 + 44 len 20] >= mem[(32 * idx + 1) + _202 + 44 len 20]:
                _294 = mem[(32 * idx) + _203 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _300 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _311 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_311 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_311 + 36] = _300
                    mem[_311 + 68] = 0
                    mem[_311 + 100] = this.address
                    mem[_311 + 132] = 128
                    mem[_311 + 164] = mem[_311]
                    s = 0
                    while s < mem[_311]:
                        mem[s + _311 + 196] = mem[s + _311 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_311]) > mem[_311]:
                        mem[_311 + mem[_311] + 196] = 0
                    require ext_code.size(address(_294))
                    call address(_294).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _300, 0, address(this.address), 128, mem[_311], mem[_311 + 196 len ceil32(mem[_311])]
                else:
                    if idx + 1 >= mem[_203]:
                        revert with 'NH{q', 50
                    _310 = mem[(32 * idx + 1) + _203 + 32]
                    _318 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_318 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_318 + 36] = _300
                    mem[_318 + 68] = 0
                    mem[_318 + 100] = address(_310)
                    mem[_318 + 132] = 128
                    mem[_318 + 164] = mem[_318]
                    s = 0
                    while s < mem[_318]:
                        mem[s + _318 + 196] = mem[s + _318 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_318]) > mem[_318]:
                        mem[_318 + mem[_318] + 196] = 0
                    require ext_code.size(address(_294))
                    call address(_294).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_318]) + _318 + -mem[64] + 192]
            else:
                _296 = mem[(32 * idx) + _203 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _301 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _313 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_313 + 36] = 0
                    mem[_313 + 68] = _301
                    mem[_313 + 100] = this.address
                    mem[_313 + 132] = 128
                    mem[_313 + 164] = mem[_313]
                    s = 0
                    while s < mem[_313]:
                        mem[s + _313 + 196] = mem[s + _313 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_313]) > mem[_313]:
                        mem[_313 + mem[_313] + 196] = 0
                    require ext_code.size(address(_296))
                    call address(_296).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_313]) + _313 + -mem[64] + 192]
                else:
                    if idx + 1 >= mem[_203]:
                        revert with 'NH{q', 50
                    _312 = mem[(32 * idx + 1) + _203 + 32]
                    _320 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_320 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_320 + 36] = 0
                    mem[_320 + 68] = _301
                    mem[_320 + 100] = address(_312)
                    mem[_320 + 132] = 128
                    mem[_320 + 164] = mem[_320]
                    s = 0
                    while s < mem[_320]:
                        mem[s + _320 + 196] = mem[s + _320 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_320]) > mem[_320]:
                        mem[_320 + mem[_320] + 196] = 0
                    require ext_code.size(address(_296))
                    call address(_296).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _301, address(_312), 128, mem[_320], mem[_320 + 196 len ceil32(mem[_320])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = idx + 1
            continue 
}

function sub_0000d4c9(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 100).length + 1 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] = ('cd', 100).length + 1
    mem[64] = (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length + 1) + 192
    if not ('cd', 100).length + 1:
        if 0 >= ('cd', 100).length + 1:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = cd[4]
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < ('cd', 100).length:
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _166 = mem[_159]
            require mem[_159] == mem[_159 + 18 len 14]
            _168 = mem[_159 + 32]
            require mem[_159 + 32] == mem[_159 + 50 len 14]
            require mem[_159 + 64] == mem[_159 + 92 len 4]
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                if not Mask(112, 0, 1000 * mem[_159 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[_159 + 18 len 14] / Mask(112, 0, 1000 * mem[_159 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
            else:
                if not Mask(112, 0, 1000 * mem[_159]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[_159 + 50 len 14] / Mask(112, 0, 1000 * mem[_159]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
            idx = idx + 1
            s = _168
            s = _166
            s = idx + 1
            continue 
        if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < cd[36]:
            revert with 0, 'ERROR_03'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        _190 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 4] = address(('cd', 100)[0])
        mem[mem[64] + 36] = _190
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), _190
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_200] == bool(mem[_200])
        _204 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_204] = ('cd', 68).length
        mem[_204 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_204 + (32 * ('cd', 68).length) + 32] = 0
        _205 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_205] = ('cd', 100).length
        mem[_205 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_205 + (32 * ('cd', 100).length) + 32] = 0
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        while idx < ('cd', 68).length - 1:
            if idx + 1 >= mem[_204]:
                revert with 'NH{q', 50
            if idx >= mem[_204]:
                revert with 'NH{q', 50
            if idx >= mem[_205]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _204 + 44 len 20] >= mem[(32 * idx + 1) + _204 + 44 len 20]:
                _294 = mem[(32 * idx) + _205 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _302 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _311 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_311 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_311 + 36] = _302
                    mem[_311 + 68] = 0
                    mem[_311 + 100] = this.address
                    mem[_311 + 132] = 128
                    mem[_311 + 164] = mem[_311]
                    s = 0
                    while s < mem[_311]:
                        mem[s + _311 + 196] = mem[s + _311 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_311]) > mem[_311]:
                        mem[_311 + mem[_311] + 196] = 0
                    require ext_code.size(address(_294))
                    call address(_294).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _302, 0, address(this.address), 128, mem[_311], mem[_311 + 196 len ceil32(mem[_311])]
                else:
                    if idx + 1 >= mem[_205]:
                        revert with 'NH{q', 50
                    _310 = mem[(32 * idx + 1) + _205 + 32]
                    _318 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_318 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_318 + 36] = _302
                    mem[_318 + 68] = 0
                    mem[_318 + 100] = address(_310)
                    mem[_318 + 132] = 128
                    mem[_318 + 164] = mem[_318]
                    s = 0
                    while s < mem[_318]:
                        mem[s + _318 + 196] = mem[s + _318 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_318]) > mem[_318]:
                        mem[_318 + mem[_318] + 196] = 0
                    require ext_code.size(address(_294))
                    call address(_294).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_318]) + _318 + -mem[64] + 192]
            else:
                _296 = mem[(32 * idx) + _205 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _303 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _313 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_313 + 36] = 0
                    mem[_313 + 68] = _303
                    mem[_313 + 100] = this.address
                    mem[_313 + 132] = 128
                    mem[_313 + 164] = mem[_313]
                    s = 0
                    while s < mem[_313]:
                        mem[s + _313 + 196] = mem[s + _313 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_313]) > mem[_313]:
                        mem[_313 + mem[_313] + 196] = 0
                    require ext_code.size(address(_296))
                    call address(_296).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_313]) + _313 + -mem[64] + 192]
                else:
                    if idx + 1 >= mem[_205]:
                        revert with 'NH{q', 50
                    _312 = mem[(32 * idx + 1) + _205 + 32]
                    _320 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_320 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_320 + 36] = 0
                    mem[_320 + 68] = _303
                    mem[_320 + 100] = address(_312)
                    mem[_320 + 132] = 128
                    mem[_320 + 164] = mem[_320]
                    s = 0
                    while s < mem[_320]:
                        mem[s + _320 + 196] = mem[s + _320 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_320]) > mem[_320]:
                        mem[_320 + mem[_320] + 196] = 0
                    require ext_code.size(address(_296))
                    call address(_296).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _303, address(_312), 128, mem[_320], mem[_320 + 196 len ceil32(mem[_320])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length + 1] = call.data[calldata.size len 32 * ('cd', 100).length + 1]
        if 0 >= ('cd', 100).length + 1:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = cd[4]
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < ('cd', 100).length:
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _167 = mem[_161]
            require mem[_161] == mem[_161 + 18 len 14]
            _169 = mem[_161 + 32]
            require mem[_161 + 32] == mem[_161 + 50 len 14]
            require mem[_161 + 64] == mem[_161 + 92 len 4]
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] >= mem[(32 * idx + 1) + 140 len 20]:
                if not Mask(112, 0, 1000 * mem[_161 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[_161 + 18 len 14] / Mask(112, 0, 1000 * mem[_161 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
            else:
                if not Mask(112, 0, 1000 * mem[_161]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]):
                    revert with 'NH{q', 18
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[_161 + 50 len 14] / Mask(112, 0, 1000 * mem[_161]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192])
            idx = idx + 1
            s = _169
            s = _167
            s = idx + 1
            continue 
        if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] < cd[36]:
            revert with 0, 'ERROR_03'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 50
        _192 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 4] = address(('cd', 100)[0])
        mem[mem[64] + 36] = _192
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), _192
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == bool(mem[_201])
        _206 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_206] = ('cd', 68).length
        mem[_206 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_206 + (32 * ('cd', 68).length) + 32] = 0
        _207 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_207] = ('cd', 100).length
        mem[_207 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_207 + (32 * ('cd', 100).length) + 32] = 0
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        idx = 0
        s = 0
        while idx < ('cd', 68).length - 1:
            if idx + 1 >= mem[_206]:
                revert with 'NH{q', 50
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            if idx >= mem[_207]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _206 + 44 len 20] >= mem[(32 * idx + 1) + _206 + 44 len 20]:
                _298 = mem[(32 * idx) + _207 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _304 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _315 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_315 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_315 + 36] = _304
                    mem[_315 + 68] = 0
                    mem[_315 + 100] = this.address
                    mem[_315 + 132] = 128
                    mem[_315 + 164] = mem[_315]
                    s = 0
                    while s < mem[_315]:
                        mem[s + _315 + 196] = mem[s + _315 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_315]) > mem[_315]:
                        mem[_315 + mem[_315] + 196] = 0
                    require ext_code.size(address(_298))
                    call address(_298).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_315]) + _315 + -mem[64] + 192]
                else:
                    if idx + 1 >= mem[_207]:
                        revert with 'NH{q', 50
                    _314 = mem[(32 * idx + 1) + _207 + 32]
                    _322 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_322 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_322 + 36] = _304
                    mem[_322 + 68] = 0
                    mem[_322 + 100] = address(_314)
                    mem[_322 + 132] = 128
                    mem[_322 + 164] = mem[_322]
                    s = 0
                    while s < mem[_322]:
                        mem[s + _322 + 196] = mem[s + _322 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_322]) > mem[_322]:
                        mem[_322 + mem[_322] + 196] = 0
                    require ext_code.size(address(_298))
                    call address(_298).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_322]) + _322 + -mem[64] + 192]
            else:
                _300 = mem[(32 * idx) + _207 + 32]
                if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                _305 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if idx >= ('cd', 68).length - 2:
                    _317 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_317 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_317 + 36] = 0
                    mem[_317 + 68] = _305
                    mem[_317 + 100] = this.address
                    mem[_317 + 132] = 128
                    mem[_317 + 164] = mem[_317]
                    s = 0
                    while s < mem[_317]:
                        mem[s + _317 + 196] = mem[s + _317 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_317]) > mem[_317]:
                        mem[_317 + mem[_317] + 196] = 0
                    require ext_code.size(address(_300))
                    call address(_300).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_317]) + _317 + -mem[64] + 192]
                else:
                    if idx + 1 >= mem[_207]:
                        revert with 'NH{q', 50
                    _316 = mem[(32 * idx + 1) + _207 + 32]
                    _324 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_324 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_324 + 36] = 0
                    mem[_324 + 68] = _305
                    mem[_324 + 100] = address(_316)
                    mem[_324 + 132] = 128
                    mem[_324 + 164] = mem[_324]
                    s = 0
                    while s < mem[_324]:
                        mem[s + _324 + 196] = mem[s + _324 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_324]) > mem[_324]:
                        mem[_324 + mem[_324] + 196] = 0
                    require ext_code.size(address(_300))
                    call address(_300).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _305, address(_316), 128, mem[_324], mem[_324 + 196 len ceil32(mem[_324])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = idx + 1
            continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if 55405 > uint32(call.func_hash) >> 224:
            if 39500 > uint32(call.func_hash) >> 224:
                if 5800 == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not stor0[msg.sender]:
                        revert with 0, 'Ownable: caller is not the owner'
                    if cd[4]:
                        call msg.sender with:
                           value cd[4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require 11409 == uint32(call.func_hash) >> 224
                    require not msg.value
                    if not stor0[msg.sender]:
                        revert with 0, 'Ownable: caller is not the owner'
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if 39500 == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not stor0[msg.sender]:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value cd[4] wei
                         gas 2300 * is_zero(value) wei
                else:
                    if 39883 == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not stor0[msg.sender]:
                            revert with 0, 'Ownable: caller is not the owner'
                        if cd[36]:
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, cd[36]
                        else:
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require 54473 == uint32(call.func_hash) >> 224
                        require calldata.size - 4 >= 128
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        mem[0] = msg.sender
                        mem[32] = 0
                        if not stor0[msg.sender]:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[128] = ('cd', 68).length
                        mem[160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 160] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        if ('cd', 100).length + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length + 1
                        mem[64] = (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length + 1) + 224
                        if not ('cd', 100).length + 1:
                            if 0 >= ('cd', 100).length + 1:
                                revert with 'NH{q', 50
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
                            idx = 0
                            s = 0
                            s = 0
                            s = 0
                            while idx < ('cd', 100).length:
                                if idx >= mem[(32 * ('cd', 68).length) + 160]:
                                    revert with 'NH{q', 50
                                staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 204 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _615 = mem[_586]
                                require mem[_586] == mem[_586 + 18 len 14]
                                _623 = mem[_586 + 32]
                                require mem[_586 + 32] == mem[_586 + 50 len 14]
                                require mem[_586 + 64] == mem[_586 + 92 len 4]
                                if idx + 1 >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + 172 len 20] >= mem[(32 * idx + 1) + 172 len 20]:
                                    if not Mask(112, 0, 1000 * mem[_586 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_586 + 18 len 14] / Mask(112, 0, 1000 * mem[_586 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if not Mask(112, 0, 1000 * mem[_586]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_586 + 50 len 14] / Mask(112, 0, 1000 * mem[_586]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                idx = idx + 1
                                s = _623
                                s = _615
                                s = idx + 1
                                continue 
                            if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
                                revert with 0, 'ERROR_03'
                            if 0 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require ('cd', 68)[0] == address(('cd', 68)[0])
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require ('cd', 100)[0] == address(('cd', 100)[0])
                            if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            _694 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            mem[mem[64] + 4] = address(('cd', 100)[0])
                            mem[mem[64] + 36] = _694
                            call address(('cd', 68)[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[0]), _694
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_720] == bool(mem[_720])
                            _731 = mem[64]
                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                            mem[_731] = ('cd', 68).length
                            mem[_731 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[_731 + (32 * ('cd', 68).length) + 32] = 0
                            _732 = mem[64]
                            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                            mem[_732] = ('cd', 100).length
                            mem[_732 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                            mem[_732 + (32 * ('cd', 100).length) + 32] = 0
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 0
                            while idx < ('cd', 68).length - 1:
                                if idx + 1 >= mem[_731]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_731]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_732]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _731 + 44 len 20] >= mem[(32 * idx + 1) + _731 + 44 len 20]:
                                    _1062 = mem[(32 * idx) + _732 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1078 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1097 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1097 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1097 + 36] = _1078
                                        mem[_1097 + 68] = 0
                                        mem[_1097 + 100] = this.address
                                        mem[_1097 + 132] = 128
                                        mem[_1097 + 164] = mem[_1097]
                                        s = 0
                                        while s < mem[_1097]:
                                            mem[s + _1097 + 196] = mem[s + _1097 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1097]) > mem[_1097]:
                                            mem[_1097 + mem[_1097] + 196] = 0
                                        require ext_code.size(address(_1062))
                                        call address(_1062).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1097]) + _1097 + -mem[64] + 192]
                                    else:
                                        if idx + 1 >= mem[_732]:
                                            revert with 'NH{q', 50
                                        _1096 = mem[(32 * idx + 1) + _732 + 32]
                                        _1115 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1115 + 36] = _1078
                                        mem[_1115 + 68] = 0
                                        mem[_1115 + 100] = address(_1096)
                                        mem[_1115 + 132] = 128
                                        mem[_1115 + 164] = mem[_1115]
                                        s = 0
                                        while s < mem[_1115]:
                                            mem[s + _1115 + 196] = mem[s + _1115 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1115]) > mem[_1115]:
                                            mem[_1115 + mem[_1115] + 196] = 0
                                        require ext_code.size(address(_1062))
                                        call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _1078, 0, address(_1096), 128, mem[_1115], mem[_1115 + 196 len ceil32(mem[_1115])]
                                else:
                                    _1064 = mem[(32 * idx) + _732 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1079 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1099 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1099 + 36] = 0
                                        mem[_1099 + 68] = _1079
                                        mem[_1099 + 100] = this.address
                                        mem[_1099 + 132] = 128
                                        mem[_1099 + 164] = mem[_1099]
                                        s = 0
                                        while s < mem[_1099]:
                                            mem[s + _1099 + 196] = mem[s + _1099 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1099]) > mem[_1099]:
                                            mem[_1099 + mem[_1099] + 196] = 0
                                        require ext_code.size(address(_1064))
                                        call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1079, address(this.address), 128, mem[_1099], mem[_1099 + 196 len ceil32(mem[_1099])]
                                    else:
                                        if idx + 1 >= mem[_732]:
                                            revert with 'NH{q', 50
                                        _1098 = mem[(32 * idx + 1) + _732 + 32]
                                        _1117 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1117 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1117 + 36] = 0
                                        mem[_1117 + 68] = _1079
                                        mem[_1117 + 100] = address(_1098)
                                        mem[_1117 + 132] = 128
                                        mem[_1117 + 164] = mem[_1117]
                                        s = 0
                                        while s < mem[_1117]:
                                            mem[s + _1117 + 196] = mem[s + _1117 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1117]) > mem[_1117]:
                                            mem[_1117 + mem[_1117] + 196] = 0
                                        require ext_code.size(address(_1064))
                                        call address(_1064).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1117]) + _1117 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = idx + 1
                                continue 
                        else:
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 100).length + 1] = call.data[calldata.size len 32 * ('cd', 100).length + 1]
                            if 0 >= ('cd', 100).length + 1:
                                revert with 'NH{q', 50
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
                            idx = 0
                            s = 0
                            s = 0
                            s = 0
                            while idx < ('cd', 100).length:
                                if idx >= mem[(32 * ('cd', 68).length) + 160]:
                                    revert with 'NH{q', 50
                                staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 204 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _616 = mem[_588]
                                require mem[_588] == mem[_588 + 18 len 14]
                                _624 = mem[_588 + 32]
                                require mem[_588 + 32] == mem[_588 + 50 len 14]
                                require mem[_588 + 64] == mem[_588 + 92 len 4]
                                if idx + 1 >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + 172 len 20] >= mem[(32 * idx + 1) + 172 len 20]:
                                    if not Mask(112, 0, 1000 * mem[_588 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_588 + 18 len 14] / Mask(112, 0, 1000 * mem[_588 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                else:
                                    if not Mask(112, 0, 1000 * mem[_588]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_588 + 50 len 14] / Mask(112, 0, 1000 * mem[_588]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                idx = idx + 1
                                s = _624
                                s = _616
                                s = idx + 1
                                continue 
                            if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            if mem[(32 * mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
                                revert with 0, 'ERROR_03'
                            if 0 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require ('cd', 68)[0] == address(('cd', 68)[0])
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require ('cd', 100)[0] == address(('cd', 100)[0])
                            if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            _696 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            mem[mem[64] + 4] = address(('cd', 100)[0])
                            mem[mem[64] + 36] = _696
                            call address(('cd', 68)[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[0]), _696
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _721 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_721] == bool(mem[_721])
                            _733 = mem[64]
                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                            mem[_733] = ('cd', 68).length
                            mem[_733 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[_733 + (32 * ('cd', 68).length) + 32] = 0
                            _734 = mem[64]
                            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                            mem[_734] = ('cd', 100).length
                            mem[_734 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                            mem[_734 + (32 * ('cd', 100).length) + 32] = 0
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 0
                            while idx < ('cd', 68).length - 1:
                                if idx + 1 >= mem[_733]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_733]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_734]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _733 + 44 len 20] >= mem[(32 * idx + 1) + _733 + 44 len 20]:
                                    _1066 = mem[(32 * idx) + _734 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1080 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1101 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1101 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1101 + 36] = _1080
                                        mem[_1101 + 68] = 0
                                        mem[_1101 + 100] = this.address
                                        mem[_1101 + 132] = 128
                                        mem[_1101 + 164] = mem[_1101]
                                        s = 0
                                        while s < mem[_1101]:
                                            mem[s + _1101 + 196] = mem[s + _1101 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1101]) > mem[_1101]:
                                            mem[_1101 + mem[_1101] + 196] = 0
                                        require ext_code.size(address(_1066))
                                        call address(_1066).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1101]) + _1101 + -mem[64] + 192]
                                    else:
                                        if idx + 1 >= mem[_734]:
                                            revert with 'NH{q', 50
                                        _1100 = mem[(32 * idx + 1) + _734 + 32]
                                        _1119 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1119 + 36] = _1080
                                        mem[_1119 + 68] = 0
                                        mem[_1119 + 100] = address(_1100)
                                        mem[_1119 + 132] = 128
                                        mem[_1119 + 164] = mem[_1119]
                                        s = 0
                                        while s < mem[_1119]:
                                            mem[s + _1119 + 196] = mem[s + _1119 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1119]) > mem[_1119]:
                                            mem[_1119 + mem[_1119] + 196] = 0
                                        require ext_code.size(address(_1066))
                                        call address(_1066).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _1080, 0, address(_1100), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
                                else:
                                    _1068 = mem[(32 * idx) + _734 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1081 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1103 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1103 + 36] = 0
                                        mem[_1103 + 68] = _1081
                                        mem[_1103 + 100] = this.address
                                        mem[_1103 + 132] = 128
                                        mem[_1103 + 164] = mem[_1103]
                                        s = 0
                                        while s < mem[_1103]:
                                            mem[s + _1103 + 196] = mem[s + _1103 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1103]) > mem[_1103]:
                                            mem[_1103 + mem[_1103] + 196] = 0
                                        require ext_code.size(address(_1068))
                                        call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1081, address(this.address), 128, mem[_1103], mem[_1103 + 196 len ceil32(mem[_1103])]
                                    else:
                                        if idx + 1 >= mem[_734]:
                                            revert with 'NH{q', 50
                                        _1102 = mem[(32 * idx + 1) + _734 + 32]
                                        _1121 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 36] = 0
                                        mem[_1121 + 68] = _1081
                                        mem[_1121 + 100] = address(_1102)
                                        mem[_1121 + 132] = 128
                                        mem[_1121 + 164] = mem[_1121]
                                        s = 0
                                        while s < mem[_1121]:
                                            mem[s + _1121 + 196] = mem[s + _1121 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1121]) > mem[_1121]:
                                            mem[_1121 + mem[_1121] + 196] = 0
                                        require ext_code.size(address(_1068))
                                        call address(_1068).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1121]) + _1121 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = idx + 1
                                continue 
        else:
            if unknown_0xad5c4648(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xad5c4648(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if unknown_0xee22dd87(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    require ('cd', 100).length >= 128
                    require ('cd', 100)[0] <= test266151307()
                    require cd[100] + ('cd', 100)[0] + 67 < cd[100] + ('cd', 100).length + 36
                    if cd[(cd[100] + ('cd', 100)[0] + 36)] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129 < 128 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[128] = cd[(cd[100] + ('cd', 100)[0] + 36)]
                    require ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
                    idx = cd[100] + ('cd', 100)[0] + 68
                    s = 160
                    while idx < cd[100] + ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require ('cd', 100)[1] <= test266151307()
                    require cd[100] + ('cd', 100)[1] + 67 < cd[100] + ('cd', 100).length + 36
                    if cd[(cd[100] + ('cd', 100)[1] + 36)] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130 < 129 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130 > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129] = cd[(cd[100] + ('cd', 100)[1] + 36)]
                    require ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
                    idx = cd[100] + ('cd', 100)[1] + 68
                    s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161
                    while idx < cd[100] + ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require ('cd', 100)[2] <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 > cd[100] + ('cd', 100)[2] + 67
                    if cd[(cd[100] + ('cd', 100)[2] + 36)] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131 < 130 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131
                    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130] = cd[(cd[100] + ('cd', 100)[2] + 36)]
                    require ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
                    s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162
                    idx = cd[100] + ('cd', 100)[2] + 68
                    while idx < cd[100] + ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68:
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if ('cd', 100)[3] == cd[(cd[100] + ('cd', 100)[0] + 36)]:
                        idx = 0
                        while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                                revert with 'NH{q', 50
                            _1557 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161]
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130]:
                                revert with 'NH{q', 50
                            _1574 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            mem[mem[64] + 36] = _1574
                            call address(_1557).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _1574
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1585 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1585] == bool(mem[_1585])
                            idx = idx + 1
                            continue 
                    else:
                        if 1 > !('cd', 100)[3]:
                            revert with 'NH{q', 17
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163] = 128
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 291] = cd[(cd[100] + ('cd', 100)[0] + 36)]
                        idx = 0
                        s = 160
                        t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 323
                        while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 195] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 323] = cd[(cd[100] + ('cd', 100)[1] + 36)]
                        idx = 0
                        s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161
                        t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 355
                        while idx < mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 227] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 355] = cd[(cd[100] + ('cd', 100)[2] + 36)]
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 387 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 259] = ('cd', 100)[3] + 1
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224
                        if ('cd', 100)[3] + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                            revert with 'NH{q', 50
                        if ('cd', 100)[3] >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                            revert with 'NH{q', 50
                        if ('cd', 100)[3] >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            revert with 'NH{q', 50
                        if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[2] + 36)]:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[(32 * ('cd', 100)[3]) + 172 len 20])
                        if mem[(32 * ('cd', 100)[3]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20] >= mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20]:
                            call mem[(32 * ('cd', 100)[3]) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162], 0, address(this.address), 128, (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224, mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163 len floor32((32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 31) + 7]
                        else:
                            call mem[(32 * ('cd', 100)[3]) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162], address(this.address), 128, (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224, mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163 len floor32((32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 31) + 7]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require unknown_0xf8890f8e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    require ('cd', 100).length >= 128
                    require ('cd', 100)[0] <= test266151307()
                    require cd[100] + ('cd', 100)[0] + 67 < cd[100] + ('cd', 100).length + 36
                    if cd[(cd[100] + ('cd', 100)[0] + 36)] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129 < 128 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[128] = cd[(cd[100] + ('cd', 100)[0] + 36)]
                    require ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
                    idx = cd[100] + ('cd', 100)[0] + 68
                    s = 160
                    while idx < cd[100] + ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require ('cd', 100)[1] <= test266151307()
                    require cd[100] + ('cd', 100)[1] + 67 < cd[100] + ('cd', 100).length + 36
                    if cd[(cd[100] + ('cd', 100)[1] + 36)] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130 < 129 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130 > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129] = cd[(cd[100] + ('cd', 100)[1] + 36)]
                    require ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
                    idx = cd[100] + ('cd', 100)[1] + 68
                    s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161
                    while idx < cd[100] + ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require ('cd', 100)[2] <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 > cd[100] + ('cd', 100)[2] + 67
                    if cd[(cd[100] + ('cd', 100)[2] + 36)] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131 < 130 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131
                    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130] = cd[(cd[100] + ('cd', 100)[2] + 36)]
                    require ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
                    s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162
                    idx = cd[100] + ('cd', 100)[2] + 68
                    while idx < cd[100] + ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68:
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if ('cd', 100)[3] == cd[(cd[100] + ('cd', 100)[0] + 36)]:
                        idx = 0
                        while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                                revert with 'NH{q', 50
                            _1559 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161]
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130]:
                                revert with 'NH{q', 50
                            _1576 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            mem[mem[64] + 36] = _1576
                            call address(_1559).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _1576
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1586 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1586] == bool(mem[_1586])
                            idx = idx + 1
                            continue 
                    else:
                        if 1 > !('cd', 100)[3]:
                            revert with 'NH{q', 17
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163] = 128
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 291] = cd[(cd[100] + ('cd', 100)[0] + 36)]
                        idx = 0
                        s = 160
                        t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 323
                        while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 195] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 323] = cd[(cd[100] + ('cd', 100)[1] + 36)]
                        idx = 0
                        s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161
                        t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 355
                        while idx < mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 227] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 355] = cd[(cd[100] + ('cd', 100)[2] + 36)]
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 387 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 259] = ('cd', 100)[3] + 1
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224
                        if ('cd', 100)[3] + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                            revert with 'NH{q', 50
                        if ('cd', 100)[3] >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                            revert with 'NH{q', 50
                        if ('cd', 100)[3] >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            revert with 'NH{q', 50
                        if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[2] + 36)]:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[(32 * ('cd', 100)[3]) + 172 len 20])
                        if mem[(32 * ('cd', 100)[3]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20] >= mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20]:
                            call mem[(32 * ('cd', 100)[3]) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162], 0, address(this.address), 128, (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224, mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163 len floor32((32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 31) + 7]
                        else:
                            call mem[(32 * ('cd', 100)[3]) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162], address(this.address), 128, (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224, mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163 len floor32((32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 31) + 7]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != 55405:
                    if 58284 == uint32(call.func_hash) >> 224:
                        require calldata.size - 4 >= 128
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        mem[0] = msg.sender
                        mem[32] = 0
                        if not stor0[msg.sender]:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[128] = ('cd', 68).length
                        mem[160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 160] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        if ('cd', 68).length > test266151307():
                            revert with 'NH{q', 65
                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ('cd', 68).length
                        mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + 224
                        if not ('cd', 68).length:
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
                            idx = ('cd', 68).length - 1
                            s = 0
                            s = 0
                            s = 0
                            while idx:
                                if idx - 1 >= mem[(32 * ('cd', 68).length) + 160]:
                                    revert with 'NH{q', 50
                                staticcall mem[(32 * idx - 1) + (32 * ('cd', 68).length) + 204 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _598 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _621 = mem[_598]
                                require mem[_598] == mem[_598 + 18 len 14]
                                require mem[_598 + 32] == mem[_598 + 50 len 14]
                                require mem[_598 + 64] == mem[_598 + 92 len 4]
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx - 1 >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + 172 len 20] >= mem[(32 * idx) + 172 len 20]:
                                    if not (997 * mem[_598 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[_598 + 50 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] / (997 * mem[_598 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])) + 1
                                else:
                                    if not (997 * mem[_598 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[_598 + 18 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] / (997 * mem[_598 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])) + 1
                                idx = idx - 1
                                s = mem[_598 + 32]
                                s = _621
                                s = idx - 1
                                continue 
                            if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] > cd[36]:
                                revert with 0, 'ERROR_03'
                            if 0 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require ('cd', 68)[0] == address(('cd', 68)[0])
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require ('cd', 100)[0] == address(('cd', 100)[0])
                            if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            _700 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            mem[mem[64] + 4] = address(('cd', 100)[0])
                            mem[mem[64] + 36] = _700
                            call address(('cd', 68)[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[0]), _700
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_722] == bool(mem[_722])
                            _735 = mem[64]
                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                            mem[_735] = ('cd', 68).length
                            mem[_735 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[_735 + (32 * ('cd', 68).length) + 32] = 0
                            _736 = mem[64]
                            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                            mem[_736] = ('cd', 100).length
                            mem[_736 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                            mem[_736 + (32 * ('cd', 100).length) + 32] = 0
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 0
                            while idx < ('cd', 68).length - 1:
                                if idx + 1 >= mem[_735]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_735]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_736]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _735 + 44 len 20] >= mem[(32 * idx + 1) + _735 + 44 len 20]:
                                    _1070 = mem[(32 * idx) + _736 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1082 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1105 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1105 + 36] = _1082
                                        mem[_1105 + 68] = 0
                                        mem[_1105 + 100] = this.address
                                        mem[_1105 + 132] = 128
                                        mem[_1105 + 164] = mem[_1105]
                                        s = 0
                                        while s < mem[_1105]:
                                            mem[s + _1105 + 196] = mem[s + _1105 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1105]) > mem[_1105]:
                                            mem[_1105 + mem[_1105] + 196] = 0
                                        require ext_code.size(address(_1070))
                                        call address(_1070).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1105]) + _1105 + -mem[64] + 192]
                                    else:
                                        if idx + 1 >= mem[_736]:
                                            revert with 'NH{q', 50
                                        _1104 = mem[(32 * idx + 1) + _736 + 32]
                                        _1125 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1125 + 36] = _1082
                                        mem[_1125 + 68] = 0
                                        mem[_1125 + 100] = address(_1104)
                                        mem[_1125 + 132] = 128
                                        mem[_1125 + 164] = mem[_1125]
                                        s = 0
                                        while s < mem[_1125]:
                                            mem[s + _1125 + 196] = mem[s + _1125 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1125]) > mem[_1125]:
                                            mem[_1125 + mem[_1125] + 196] = 0
                                        require ext_code.size(address(_1070))
                                        call address(_1070).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1125]) + _1125 + -mem[64] + 192]
                                else:
                                    _1072 = mem[(32 * idx) + _736 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1083 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1107 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1107 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1107 + 36] = 0
                                        mem[_1107 + 68] = _1083
                                        mem[_1107 + 100] = this.address
                                        mem[_1107 + 132] = 128
                                        mem[_1107 + 164] = mem[_1107]
                                        s = 0
                                        while s < mem[_1107]:
                                            mem[s + _1107 + 196] = mem[s + _1107 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1107]) > mem[_1107]:
                                            mem[_1107 + mem[_1107] + 196] = 0
                                        require ext_code.size(address(_1072))
                                        call address(_1072).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1107]) + _1107 + -mem[64] + 192]
                                    else:
                                        if idx + 1 >= mem[_736]:
                                            revert with 'NH{q', 50
                                        _1106 = mem[(32 * idx + 1) + _736 + 32]
                                        _1127 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1127 + 36] = 0
                                        mem[_1127 + 68] = _1083
                                        mem[_1127 + 100] = address(_1106)
                                        mem[_1127 + 132] = 128
                                        mem[_1127 + 164] = mem[_1127]
                                        s = 0
                                        while s < mem[_1127]:
                                            mem[s + _1127 + 196] = mem[s + _1127 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1127]) > mem[_1127]:
                                            mem[_1127 + mem[_1127] + 196] = 0
                                        require ext_code.size(address(_1072))
                                        call address(_1072).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1127]) + _1127 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = idx + 1
                                continue 
                        else:
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
                            idx = ('cd', 68).length - 1
                            s = 0
                            s = 0
                            s = 0
                            while idx:
                                if idx - 1 >= mem[(32 * ('cd', 68).length) + 160]:
                                    revert with 'NH{q', 50
                                staticcall mem[(32 * idx - 1) + (32 * ('cd', 68).length) + 204 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _600 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _622 = mem[_600]
                                require mem[_600] == mem[_600 + 18 len 14]
                                require mem[_600 + 32] == mem[_600 + 50 len 14]
                                require mem[_600 + 64] == mem[_600 + 92 len 4]
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx - 1 >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + 172 len 20] >= mem[(32 * idx) + 172 len 20]:
                                    if not (997 * mem[_600 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[_600 + 50 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] / (997 * mem[_600 + 18 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])) + 1
                                else:
                                    if not (997 * mem[_600 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                                        revert with 'NH{q', 18
                                    if idx - 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx - 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[_600 + 18 len 14] * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] / (997 * mem[_600 + 50 len 14]) - (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])) + 1
                                idx = idx - 1
                                s = mem[_600 + 32]
                                s = _622
                                s = idx - 1
                                continue 
                            if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            if mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] > cd[36]:
                                revert with 0, 'ERROR_03'
                            if 0 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require ('cd', 68)[0] == address(('cd', 68)[0])
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require ('cd', 100)[0] == address(('cd', 100)[0])
                            if 0 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            _702 = mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            mem[mem[64] + 4] = address(('cd', 100)[0])
                            mem[mem[64] + 36] = _702
                            call address(('cd', 68)[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[0]), _702
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_723] == bool(mem[_723])
                            _737 = mem[64]
                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                            mem[_737] = ('cd', 68).length
                            mem[_737 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[_737 + (32 * ('cd', 68).length) + 32] = 0
                            _738 = mem[64]
                            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                            mem[_738] = ('cd', 100).length
                            mem[_738 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                            mem[_738 + (32 * ('cd', 100).length) + 32] = 0
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 0
                            while idx < ('cd', 68).length - 1:
                                if idx + 1 >= mem[_737]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_737]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_738]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _737 + 44 len 20] >= mem[(32 * idx + 1) + _737 + 44 len 20]:
                                    _1074 = mem[(32 * idx) + _738 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1084 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1109 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1109 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1109 + 36] = _1084
                                        mem[_1109 + 68] = 0
                                        mem[_1109 + 100] = this.address
                                        mem[_1109 + 132] = 128
                                        mem[_1109 + 164] = mem[_1109]
                                        s = 0
                                        while s < mem[_1109]:
                                            mem[s + _1109 + 196] = mem[s + _1109 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1109]) > mem[_1109]:
                                            mem[_1109 + mem[_1109] + 196] = 0
                                        require ext_code.size(address(_1074))
                                        call address(_1074).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _1084, 0, address(this.address), 128, mem[_1109], mem[_1109 + 196 len ceil32(mem[_1109])]
                                    else:
                                        if idx + 1 >= mem[_738]:
                                            revert with 'NH{q', 50
                                        _1108 = mem[(32 * idx + 1) + _738 + 32]
                                        _1129 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1129 + 36] = _1084
                                        mem[_1129 + 68] = 0
                                        mem[_1129 + 100] = address(_1108)
                                        mem[_1129 + 132] = 128
                                        mem[_1129 + 164] = mem[_1129]
                                        s = 0
                                        while s < mem[_1129]:
                                            mem[s + _1129 + 196] = mem[s + _1129 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1129]) > mem[_1129]:
                                            mem[_1129 + mem[_1129] + 196] = 0
                                        require ext_code.size(address(_1074))
                                        call address(_1074).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _1084, 0, address(_1108), 128, mem[_1129], mem[_1129 + 196 len ceil32(mem[_1129])]
                                else:
                                    _1076 = mem[(32 * idx) + _738 + 32]
                                    if idx + 1 >= mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]:
                                        revert with 'NH{q', 50
                                    _1085 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                                    if idx >= ('cd', 68).length - 2:
                                        _1111 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1111 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1111 + 36] = 0
                                        mem[_1111 + 68] = _1085
                                        mem[_1111 + 100] = this.address
                                        mem[_1111 + 132] = 128
                                        mem[_1111 + 164] = mem[_1111]
                                        s = 0
                                        while s < mem[_1111]:
                                            mem[s + _1111 + 196] = mem[s + _1111 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1111]) > mem[_1111]:
                                            mem[_1111 + mem[_1111] + 196] = 0
                                        require ext_code.size(address(_1076))
                                        call address(_1076).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_1111]) + _1111 + -mem[64] + 192]
                                    else:
                                        if idx + 1 >= mem[_738]:
                                            revert with 'NH{q', 50
                                        _1110 = mem[(32 * idx + 1) + _738 + 32]
                                        _1131 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_1131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1131 + 36] = 0
                                        mem[_1131 + 68] = _1085
                                        mem[_1131 + 100] = address(_1110)
                                        mem[_1131 + 132] = 128
                                        mem[_1131 + 164] = mem[_1131]
                                        s = 0
                                        while s < mem[_1131]:
                                            mem[s + _1131 + 196] = mem[s + _1131 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_1131]) > mem[_1131]:
                                            mem[_1131 + mem[_1131] + 196] = 0
                                        require ext_code.size(address(_1076))
                                        call address(_1076).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _1085, address(_1110), 128, mem[_1131], mem[_1131 + 196 len ceil32(mem[_1131])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = idx + 1
                                continue 
                    else:
                        require unknown_0x10d1e85c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        require ('cd', 100).length >= 128
                        require ('cd', 100)[0] <= test266151307()
                        require cd[100] + ('cd', 100)[0] + 67 < cd[100] + ('cd', 100).length + 36
                        if cd[(cd[100] + ('cd', 100)[0] + 36)] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129 < 128 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129 > test266151307():
                            revert with 'NH{q', 65
                        mem[128] = cd[(cd[100] + ('cd', 100)[0] + 36)]
                        require ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
                        idx = cd[100] + ('cd', 100)[0] + 68
                        s = 160
                        while idx < cd[100] + ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68:
                            require cd[idx] == address(cd[idx])
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        require ('cd', 100)[1] <= test266151307()
                        require cd[100] + ('cd', 100)[1] + 67 < cd[100] + ('cd', 100).length + 36
                        if cd[(cd[100] + ('cd', 100)[1] + 36)] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130 < 129 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130 > test266151307():
                            revert with 'NH{q', 65
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129] = cd[(cd[100] + ('cd', 100)[1] + 36)]
                        require ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
                        idx = cd[100] + ('cd', 100)[1] + 68
                        s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161
                        while idx < cd[100] + ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68:
                            require cd[idx] == address(cd[idx])
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        require ('cd', 100)[2] <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 > cd[100] + ('cd', 100)[2] + 67
                        if cd[(cd[100] + ('cd', 100)[2] + 36)] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131 < 130 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131
                        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130] = cd[(cd[100] + ('cd', 100)[2] + 36)]
                        require ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
                        s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162
                        idx = cd[100] + ('cd', 100)[2] + 68
                        while idx < cd[100] + ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68:
                            mem[s] = cd[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        if ('cd', 100)[3] == cd[(cd[100] + ('cd', 100)[0] + 36)]:
                            idx = 0
                            while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                                if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                                    revert with 'NH{q', 50
                                _1555 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161]
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 130]:
                                    revert with 'NH{q', 50
                                _1572 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162]
                                mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                                mem[mem[64] + 36] = _1572
                                call address(_1555).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _1572
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1584] == bool(mem[_1584])
                                idx = idx + 1
                                continue 
                        else:
                            if 1 > !('cd', 100)[3]:
                                revert with 'NH{q', 17
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163] = 128
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 291] = cd[(cd[100] + ('cd', 100)[0] + 36)]
                            idx = 0
                            s = 160
                            t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 323
                            while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 195] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 160
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 323] = cd[(cd[100] + ('cd', 100)[1] + 36)]
                            idx = 0
                            s = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 161
                            t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 355
                            while idx < mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 227] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 192
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 355] = cd[(cd[100] + ('cd', 100)[2] + 36)]
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 387 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 259] = ('cd', 100)[3] + 1
                            mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 131] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224
                            if ('cd', 100)[3] + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                                revert with 'NH{q', 50
                            if ('cd', 100)[3] >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]:
                                revert with 'NH{q', 50
                            if ('cd', 100)[3] >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                                revert with 'NH{q', 50
                            if ('cd', 100)[3] + 1 >= cd[(cd[100] + ('cd', 100)[2] + 36)]:
                                revert with 'NH{q', 50
                            require ext_code.size(mem[(32 * ('cd', 100)[3]) + 172 len 20])
                            if mem[(32 * ('cd', 100)[3]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20] >= mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20]:
                                call mem[(32 * ('cd', 100)[3]) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162], 0, address(this.address), 128, (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224, mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163 len floor32((32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 31) + 7]
                            else:
                                call mem[(32 * ('cd', 100)[3]) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[(32 * ('cd', 100)[3] + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 162], address(this.address), 128, (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224, mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 163 len floor32((32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 31) + 7]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require calldata.size - 4 >= 128
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    mem[0] = msg.sender
                    mem[32] = 0
                    if not stor0[msg.sender]:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[128] = ('cd', 68).length
                    mem[160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + 160] = ('cd', 36).length
                    mem[(32 * ('cd', 68).length) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    if ('cd', 36).length + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 36).length + 1
                    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224
                    if not ('cd', 36).length + 1:
                        if 0 >= ('cd', 36).length + 1:
                            revert with 'NH{q', 50
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = cd[4]
                        idx = 0
                        s = 0
                        s = 0
                        s = 0
                        while idx < ('cd', 36).length:
                            if idx >= mem[(32 * ('cd', 68).length) + 160]:
                                revert with 'NH{q', 50
                            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 204 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _618 = mem[_592]
                            require mem[_592] == mem[_592 + 18 len 14]
                            _625 = mem[_592 + 32]
                            require mem[_592 + 32] == mem[_592 + 50 len 14]
                            require mem[_592 + 64] == mem[_592 + 92 len 4]
                            if idx + 1 >= mem[128]:
                                revert with 'NH{q', 50
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + 172 len 20] >= mem[(32 * idx + 1) + 172 len 20]:
                                if not Mask(112, 0, 1000 * mem[_592 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]):
                                    revert with 'NH{q', 18
                                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[_592 + 18 len 14] / Mask(112, 0, 1000 * mem[_592 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if not Mask(112, 0, 1000 * mem[_592]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]):
                                    revert with 'NH{q', 18
                                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[_592 + 50 len 14] / Mask(112, 0, 1000 * mem[_592]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224])
                            idx = idx + 1
                            s = _625
                            s = _618
                            s = idx + 1
                            continue 
                        if 0 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                            revert with 'NH{q', 50
                        if mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                            revert with 'NH{q', 50
                        if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + cd[100]:
                            revert with 0, 'ERROR_05_1'
                        _609 = mem[64]
                        mem[mem[64] + 32] = 128
                        mem[mem[64] + 160] = ('cd', 36).length
                        idx = 0
                        s = cd[36] + 36
                        t = mem[64] + 192
                        while idx < ('cd', 36).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 160
                        mem[mem[64] + (32 * ('cd', 36).length) + 192] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + (32 * ('cd', 36).length) + 224
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 96] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
                        _1369 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]]
                        mem[mem[64] + 128] = 1
                        _1561 = mem[64]
                        mem[mem[64]] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 224
                        mem[64] = mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 256
                        if 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[1] == address(('cd', 68)[1])
                        if 0 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ('cd', 36)[0] == address(('cd', 36)[0])
                        if 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                            revert with 'NH{q', 50
                        if address(('cd', 68)[0]) >= address(('cd', 68)[1]):
                            _1669 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 260] = _1669
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 292] = 0
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 324] = this.address
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 356] = 128
                            _1677 = mem[_1561]
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 388] = mem[_1561]
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 420 len ceil32(_1677)] = mem[_1561 + 32 len ceil32(_1677)]
                            if ceil32(_1677) > _1677:
                                mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + _1677 + 420] = 0
                            require ext_code.size(address(('cd', 36)[0]))
                            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1669, 0, address(this.address), 128, mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 388 len ceil32(_1677) + 32]
                        else:
                            _1671 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 260] = 0
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 292] = _1671
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 324] = this.address
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 356] = 128
                            _1678 = mem[_1561]
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 388] = mem[_1561]
                            mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 420 len ceil32(_1678)] = mem[_1561 + 32 len ceil32(_1678)]
                            if ceil32(_1678) > _1678:
                                mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + _1678 + 420] = 0
                            require ext_code.size(address(('cd', 36)[0]))
                            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1671, address(this.address), 128, mem[_609 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1369) + 388 len ceil32(_1678) + 32]
                    else:
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
                        if 0 >= ('cd', 36).length + 1:
                            revert with 'NH{q', 50
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = cd[4]
                        idx = 0
                        s = 0
                        s = 0
                        s = 0
                        while idx < ('cd', 36).length:
                            if idx >= mem[(32 * ('cd', 68).length) + 160]:
                                revert with 'NH{q', 50
                            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 204 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _620 = mem[_596]
                            require mem[_596] == mem[_596 + 18 len 14]
                            _626 = mem[_596 + 32]
                            require mem[_596 + 32] == mem[_596 + 50 len 14]
                            require mem[_596 + 64] == mem[_596 + 92 len 4]
                            if idx + 1 >= mem[128]:
                                revert with 'NH{q', 50
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + 172 len 20] >= mem[(32 * idx + 1) + 172 len 20]:
                                if not Mask(112, 0, 1000 * mem[_596 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]):
                                    revert with 'NH{q', 18
                                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[_596 + 18 len 14] / Mask(112, 0, 1000 * mem[_596 + 32]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if not Mask(112, 0, 1000 * mem[_596]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]):
                                    revert with 'NH{q', 18
                                if idx + 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] * mem[_596 + 50 len 14] / Mask(112, 0, 1000 * mem[_596]) + (997 * mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224])
                            idx = idx + 1
                            s = _626
                            s = _620
                            s = idx + 1
                            continue 
                        if 0 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                            revert with 'NH{q', 50
                        if mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                            revert with 'NH{q', 50
                        if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] <= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + cd[100]:
                            revert with 0, 'ERROR_05_1'
                        _611 = mem[64]
                        mem[mem[64] + 32] = 128
                        mem[mem[64] + 160] = ('cd', 36).length
                        idx = 0
                        s = cd[36] + 36
                        t = mem[64] + 192
                        while idx < ('cd', 36).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 160
                        mem[mem[64] + (32 * ('cd', 36).length) + 192] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + (32 * ('cd', 36).length) + 224
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 96] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
                        _1370 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]]
                        mem[mem[64] + 128] = 1
                        _1562 = mem[64]
                        mem[mem[64]] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 224
                        mem[64] = mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 256
                        if 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[1] == address(('cd', 68)[1])
                        if 0 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ('cd', 36)[0] == address(('cd', 36)[0])
                        if 1 >= mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                            revert with 'NH{q', 50
                        if address(('cd', 68)[0]) >= address(('cd', 68)[1]):
                            _1673 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 260] = _1673
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 292] = 0
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 324] = this.address
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 356] = 128
                            _1679 = mem[_1562]
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 388] = mem[_1562]
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 420 len ceil32(_1679)] = mem[_1562 + 32 len ceil32(_1679)]
                            if ceil32(_1679) > _1679:
                                mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + _1679 + 420] = 0
                            require ext_code.size(address(('cd', 36)[0]))
                            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1673, 0, address(this.address), 128, mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 388 len ceil32(_1679) + 32]
                        else:
                            _1675 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 260] = 0
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 292] = _1675
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 324] = this.address
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 356] = 128
                            _1680 = mem[_1562]
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 388] = mem[_1562]
                            mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 420 len ceil32(_1680)] = mem[_1562 + 32 len ceil32(_1680)]
                            if ceil32(_1680) > _1680:
                                mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + _1680 + 420] = 0
                            require ext_code.size(address(('cd', 36)[0]))
                            call address(('cd', 36)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1675, address(this.address), 128, mem[_611 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1370) + 388 len ceil32(_1680) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
