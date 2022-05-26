contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'nice try bud'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'nice try bud'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_41a3b60b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nice try bud'
    idx = 0
    while idx < ('cd', 4).length:
        if eth.balance(cd[((32 * idx) + cd[4] + 36)]) <= cd[36]:
            if cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]) > cd[36]:
                revert with 0, 'ds-math-sub-underflow'
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 32, 35, 0xfe4e6f7420656e6f756768207761766178206c65667420696e207468652077616c6c65, mem[mem[64] + 103 len 29]
            mem[mem[64] + 4] = cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _37 = mem[_35]
            t = _35 + 32
            u = _35 + 32
            s = mem[_35]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_35 + floor32(mem[_35]) + 32] = mem[_35 + -(mem[_35] % 32) + floor32(mem[_35]) + 64 len mem[_35] % 32] or Mask(8 * -(mem[_35] % 32) + 32, -(8 * -(mem[_35] % 32) + 32) + 256, mem[_35 + floor32(mem[_35]) + 32])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[_35 + 32 len 4] with:
               value cd[36] - eth.balance(cd[((32 * idx) + cd[4] + 36)]) wei
                 gas gas_remaining wei
                args mem[_35 + 36 len _37 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                54,
                                0x745472616e7366657248656c7065723a3a736166655472616e736665724554483a204d41544943207472616e73666572206661696c65,
                                mem[_35 + 154 len 10]
            else:
                mem[64] = _35 + ceil32(return_data.size) + 33
                mem[_35 + 32] = return_data.size
                mem[_35 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                54,
                                0x745472616e7366657248656c7065723a3a736166655472616e736665724554483a204d41544943207472616e73666572206661696c65,
                                mem[_35 + ceil32(return_data.size) + 155 len 10]
            ('bool', 'ext_call.success')
        idx = idx + 1
        continue 
}



}
