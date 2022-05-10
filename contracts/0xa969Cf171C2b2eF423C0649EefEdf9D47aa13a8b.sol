contract main {




// =====================  Runtime code  =====================


function _fallback() {
    revert with 0, 'FB'
}

function withdrawEther(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != 0xaaaaaeb932c0527655baff3bbbe3264bc61271e8:
        if msg.sender != 0xaaaaaf4bf78e014af3a25dbc702e7493fb3b98c8:
            if msg.sender != 0xaaaaa22233cf3a2eefacb085f5e2d828fb47f458:
                if msg.sender != 0xaaaaa85601e05dfa39cf4a0a037dd371a0db8887:
                    if msg.sender != 0xaaaaa29a382baa888655841a3d9af997044fc8c9:
                        if msg.sender != 0xaaaaa0bfa6a92ad1531b2aa438bdddf50dca7ee2:
                            if msg.sender != 0xaaaaa319f89a58f7e0cfd2c86f2d7047aa0c32d7:
                                if msg.sender != 0xaaaaaddd3f56601bc5be6dd1e2655f9029531788:
                                    if msg.sender != 0xaaaaa3f91b2d4b714526d0096485fa34b63f8807:
                                        if msg.sender != 0xaaaaaf4acd6e97219e35a807aab2c041283df5fe:
                                            if msg.sender != 0xaaaaa6ff8986a294e5a817187921ae47bddfbff4:
                                                if msg.sender != 0xaaaaa328bd652d0cb9e7a112476fc1aff458a9c4:
                                                    if msg.sender != 0xaaaaa2789cdc3c97c1dce79ac1a1a163f014d882:
                                                        if msg.sender != 0xaaaaa3a7370d91a983067503573a55a2bc3ec1ca:
                                                            if msg.sender != 0xaaaaab018316f37951e2894585c160514f495582:
                                                                if msg.sender != 0xaaaaad2b13cf538d5295c53c65acb7185036d0c8:
                                                                    revert with 0, 'NS'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender != 0xaaaaaeb932c0527655baff3bbbe3264bc61271e8:
        if msg.sender != 0xaaaaaf4bf78e014af3a25dbc702e7493fb3b98c8:
            if msg.sender != 0xaaaaa22233cf3a2eefacb085f5e2d828fb47f458:
                if msg.sender != 0xaaaaa85601e05dfa39cf4a0a037dd371a0db8887:
                    if msg.sender != 0xaaaaa29a382baa888655841a3d9af997044fc8c9:
                        if msg.sender != 0xaaaaa0bfa6a92ad1531b2aa438bdddf50dca7ee2:
                            if msg.sender != 0xaaaaa319f89a58f7e0cfd2c86f2d7047aa0c32d7:
                                if msg.sender != 0xaaaaaddd3f56601bc5be6dd1e2655f9029531788:
                                    if msg.sender != 0xaaaaa3f91b2d4b714526d0096485fa34b63f8807:
                                        if msg.sender != 0xaaaaaf4acd6e97219e35a807aab2c041283df5fe:
                                            if msg.sender != 0xaaaaa6ff8986a294e5a817187921ae47bddfbff4:
                                                if msg.sender != 0xaaaaa328bd652d0cb9e7a112476fc1aff458a9c4:
                                                    if msg.sender != 0xaaaaa2789cdc3c97c1dce79ac1a1a163f014d882:
                                                        if msg.sender != 0xaaaaa3a7370d91a983067503573a55a2bc3ec1ca:
                                                            if msg.sender != 0xaaaaab018316f37951e2894585c160514f495582:
                                                                if msg.sender != 0xaaaaad2b13cf538d5295c53c65acb7185036d0c8:
                                                                    revert with 0, 'NS'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != 0xaaaaaeb932c0527655baff3bbbe3264bc61271e8:
        if msg.sender != 0xaaaaaf4bf78e014af3a25dbc702e7493fb3b98c8:
            if msg.sender != 0xaaaaa22233cf3a2eefacb085f5e2d828fb47f458:
                if msg.sender != 0xaaaaa85601e05dfa39cf4a0a037dd371a0db8887:
                    if msg.sender != 0xaaaaa29a382baa888655841a3d9af997044fc8c9:
                        if msg.sender != 0xaaaaa0bfa6a92ad1531b2aa438bdddf50dca7ee2:
                            if msg.sender != 0xaaaaa319f89a58f7e0cfd2c86f2d7047aa0c32d7:
                                if msg.sender != 0xaaaaaddd3f56601bc5be6dd1e2655f9029531788:
                                    if msg.sender != 0xaaaaa3f91b2d4b714526d0096485fa34b63f8807:
                                        if msg.sender != 0xaaaaaf4acd6e97219e35a807aab2c041283df5fe:
                                            if msg.sender != 0xaaaaa6ff8986a294e5a817187921ae47bddfbff4:
                                                if msg.sender != 0xaaaaa328bd652d0cb9e7a112476fc1aff458a9c4:
                                                    if msg.sender != 0xaaaaa2789cdc3c97c1dce79ac1a1a163f014d882:
                                                        if msg.sender != 0xaaaaa3a7370d91a983067503573a55a2bc3ec1ca:
                                                            if msg.sender != 0xaaaaab018316f37951e2894585c160514f495582:
                                                                if msg.sender != 0xaaaaad2b13cf538d5295c53c65acb7185036d0c8:
                                                                    revert with 0, 'NS'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    if arg1:
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value arg1 wei
             gas gas_remaining wei
    else:
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a8afcd2(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == uint8(cd[100])
    if msg.sender != 0xaaaaaeb932c0527655baff3bbbe3264bc61271e8:
        if msg.sender != 0xaaaaaf4bf78e014af3a25dbc702e7493fb3b98c8:
            if msg.sender != 0xaaaaa22233cf3a2eefacb085f5e2d828fb47f458:
                if msg.sender != 0xaaaaa85601e05dfa39cf4a0a037dd371a0db8887:
                    if msg.sender != 0xaaaaa29a382baa888655841a3d9af997044fc8c9:
                        if msg.sender != 0xaaaaa0bfa6a92ad1531b2aa438bdddf50dca7ee2:
                            if msg.sender != 0xaaaaa319f89a58f7e0cfd2c86f2d7047aa0c32d7:
                                if msg.sender != 0xaaaaaddd3f56601bc5be6dd1e2655f9029531788:
                                    if msg.sender != 0xaaaaa3f91b2d4b714526d0096485fa34b63f8807:
                                        if msg.sender != 0xaaaaaf4acd6e97219e35a807aab2c041283df5fe:
                                            if msg.sender != 0xaaaaa6ff8986a294e5a817187921ae47bddfbff4:
                                                if msg.sender != 0xaaaaa328bd652d0cb9e7a112476fc1aff458a9c4:
                                                    if msg.sender != 0xaaaaa2789cdc3c97c1dce79ac1a1a163f014d882:
                                                        if msg.sender != 0xaaaaa3a7370d91a983067503573a55a2bc3ec1ca:
                                                            if msg.sender != 0xaaaaab018316f37951e2894585c160514f495582:
                                                                if msg.sender != 0xaaaaad2b13cf538d5295c53c65acb7185036d0c8:
                                                                    revert with 0, 'NS'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        call address(cd[((32 * idx) + cd[68] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if uint8(cd[100]):
        if (16 * calldata.size) + 21000 > 50000:
            require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
            call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                 gas gas_remaining wei
                args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[100]) / 255)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_4768bfdf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    if 0xaaaaaeb932c0527655baff3bbbe3264bc61271e8 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _25 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _85 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _25 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_85) <= _85:
                _947 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1075 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _947 + ceil32(_1075) + -mem[64] + 68
            mem[_85 + 128] = 0
            _1011 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1107 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1011 + ceil32(_1107) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _27 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _45 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _87 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _45 + _87 + 68 <= _27 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_87)] = mem[_45 + 164 len ceil32(_87)]
        if ceil32(_87) <= _87:
            _949 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _87
            mem[mem[64] + 68 len ceil32(_87)] = mem[ceil32(return_data.size) + 129 len ceil32(_87)]
            if ceil32(_87) <= _87:
                revert with 0, 32, _87, mem[mem[64] + 68 len ceil32(_87)]
            mem[mem[64] + _87 + 68] = 0
            revert with memory
              from mem[64]
               len _949 + ceil32(_87) + -mem[64] + 68
        mem[ceil32(return_data.size) + _87 + 129] = 0
        _1013 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _87
        mem[mem[64] + 68 len ceil32(_87)] = mem[ceil32(return_data.size) + 129 len ceil32(_87)]
        if ceil32(_87) <= _87:
            revert with 0, 32, _87, mem[mem[64] + 68 len ceil32(_87)]
        mem[mem[64] + _87 + 68] = 0
        revert with memory
          from mem[64]
           len _1013 + ceil32(_87) + -mem[64] + 68
    if 0xaaaaaf4bf78e014af3a25dbc702e7493fb3b98c8 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _34 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _103 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _34 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_103) <= _103:
                _951 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1077 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _951 + ceil32(_1077) + -mem[64] + 68
            mem[_103 + 128] = 0
            _1015 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1109 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1015 + ceil32(_1109) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _36 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _61 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _105 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _61 + _105 + 68 <= _36 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_105)] = mem[_61 + 164 len ceil32(_105)]
        if ceil32(_105) <= _105:
            _953 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _105
            mem[mem[64] + 68 len ceil32(_105)] = mem[ceil32(return_data.size) + 129 len ceil32(_105)]
            if ceil32(_105) <= _105:
                revert with 0, 32, _105, mem[mem[64] + 68 len ceil32(_105)]
            mem[mem[64] + _105 + 68] = 0
            revert with memory
              from mem[64]
               len _953 + ceil32(_105) + -mem[64] + 68
        mem[ceil32(return_data.size) + _105 + 129] = 0
        _1017 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _105
        mem[mem[64] + 68 len ceil32(_105)] = mem[ceil32(return_data.size) + 129 len ceil32(_105)]
        if ceil32(_105) <= _105:
            revert with 0, 32, _105, mem[mem[64] + 68 len ceil32(_105)]
        mem[mem[64] + _105 + 68] = 0
        revert with memory
          from mem[64]
           len _1017 + ceil32(_105) + -mem[64] + 68
    if 0xaaaaa22233cf3a2eefacb085f5e2d828fb47f458 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _47 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _121 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _47 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_121) <= _121:
                _955 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1079 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _955 + ceil32(_1079) + -mem[64] + 68
            mem[_121 + 128] = 0
            _1019 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1111 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1019 + ceil32(_1111) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _49 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _75 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _123 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _75 + _123 + 68 <= _49 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_123)] = mem[_75 + 164 len ceil32(_123)]
        if ceil32(_123) <= _123:
            _957 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _123
            mem[mem[64] + 68 len ceil32(_123)] = mem[ceil32(return_data.size) + 129 len ceil32(_123)]
            if ceil32(_123) <= _123:
                revert with 0, 32, _123, mem[mem[64] + 68 len ceil32(_123)]
            mem[mem[64] + _123 + 68] = 0
            revert with memory
              from mem[64]
               len _957 + ceil32(_123) + -mem[64] + 68
        mem[ceil32(return_data.size) + _123 + 129] = 0
        _1021 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _123
        mem[mem[64] + 68 len ceil32(_123)] = mem[ceil32(return_data.size) + 129 len ceil32(_123)]
        if ceil32(_123) <= _123:
            revert with 0, 32, _123, mem[mem[64] + 68 len ceil32(_123)]
        mem[mem[64] + _123 + 68] = 0
        revert with memory
          from mem[64]
           len _1021 + ceil32(_123) + -mem[64] + 68
    if 0xaaaaa85601e05dfa39cf4a0a037dd371a0db8887 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _63 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _139 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _63 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_139) <= _139:
                _959 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1081 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _959 + ceil32(_1081) + -mem[64] + 68
            mem[_139 + 128] = 0
            _1023 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1113 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1023 + ceil32(_1113) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _65 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _93 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _141 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _93 + _141 + 68 <= _65 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_141)] = mem[_93 + 164 len ceil32(_141)]
        if ceil32(_141) <= _141:
            _961 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _141
            mem[mem[64] + 68 len ceil32(_141)] = mem[ceil32(return_data.size) + 129 len ceil32(_141)]
            if ceil32(_141) <= _141:
                revert with 0, 32, _141, mem[mem[64] + 68 len ceil32(_141)]
            mem[mem[64] + _141 + 68] = 0
            revert with memory
              from mem[64]
               len _961 + ceil32(_141) + -mem[64] + 68
        mem[ceil32(return_data.size) + _141 + 129] = 0
        _1025 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _141
        mem[mem[64] + 68 len ceil32(_141)] = mem[ceil32(return_data.size) + 129 len ceil32(_141)]
        if ceil32(_141) <= _141:
            revert with 0, 32, _141, mem[mem[64] + 68 len ceil32(_141)]
        mem[mem[64] + _141 + 68] = 0
        revert with memory
          from mem[64]
           len _1025 + ceil32(_141) + -mem[64] + 68
    if 0xaaaaa29a382baa888655841a3d9af997044fc8c9 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _77 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _162 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _77 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_162) <= _162:
                _963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1083 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _963 + ceil32(_1083) + -mem[64] + 68
            mem[_162 + 128] = 0
            _1027 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1115 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1027 + ceil32(_1115) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _79 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _111 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _164 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _111 + _164 + 68 <= _79 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_164)] = mem[_111 + 164 len ceil32(_164)]
        if ceil32(_164) <= _164:
            _965 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _164
            mem[mem[64] + 68 len ceil32(_164)] = mem[ceil32(return_data.size) + 129 len ceil32(_164)]
            if ceil32(_164) <= _164:
                revert with 0, 32, _164, mem[mem[64] + 68 len ceil32(_164)]
            mem[mem[64] + _164 + 68] = 0
            revert with memory
              from mem[64]
               len _965 + ceil32(_164) + -mem[64] + 68
        mem[ceil32(return_data.size) + _164 + 129] = 0
        _1029 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _164
        mem[mem[64] + 68 len ceil32(_164)] = mem[ceil32(return_data.size) + 129 len ceil32(_164)]
        if ceil32(_164) <= _164:
            revert with 0, 32, _164, mem[mem[64] + 68 len ceil32(_164)]
        mem[mem[64] + _164 + 68] = 0
        revert with memory
          from mem[64]
           len _1029 + ceil32(_164) + -mem[64] + 68
    if 0xaaaaa0bfa6a92ad1531b2aa438bdddf50dca7ee2 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _95 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _184 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _95 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_184) <= _184:
                _967 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1085 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _967 + ceil32(_1085) + -mem[64] + 68
            mem[_184 + 128] = 0
            _1031 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1117 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1031 + ceil32(_1117) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _97 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _129 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _186 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _129 + _186 + 68 <= _97 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_186)] = mem[_129 + 164 len ceil32(_186)]
        if ceil32(_186) <= _186:
            _969 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _186
            mem[mem[64] + 68 len ceil32(_186)] = mem[ceil32(return_data.size) + 129 len ceil32(_186)]
            if ceil32(_186) <= _186:
                revert with 0, 32, _186, mem[mem[64] + 68 len ceil32(_186)]
            mem[mem[64] + _186 + 68] = 0
            revert with memory
              from mem[64]
               len _969 + ceil32(_186) + -mem[64] + 68
        mem[ceil32(return_data.size) + _186 + 129] = 0
        _1033 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _186
        mem[mem[64] + 68 len ceil32(_186)] = mem[ceil32(return_data.size) + 129 len ceil32(_186)]
        if ceil32(_186) <= _186:
            revert with 0, 32, _186, mem[mem[64] + 68 len ceil32(_186)]
        mem[mem[64] + _186 + 68] = 0
        revert with memory
          from mem[64]
           len _1033 + ceil32(_186) + -mem[64] + 68
    if 0xaaaaa319f89a58f7e0cfd2c86f2d7047aa0c32d7 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _113 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _210 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _113 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_210) <= _210:
                _971 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1087 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _971 + ceil32(_1087) + -mem[64] + 68
            mem[_210 + 128] = 0
            _1035 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1119 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1035 + ceil32(_1119) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _115 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _147 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _212 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _147 + _212 + 68 <= _115 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_212)] = mem[_147 + 164 len ceil32(_212)]
        if ceil32(_212) <= _212:
            _973 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _212
            mem[mem[64] + 68 len ceil32(_212)] = mem[ceil32(return_data.size) + 129 len ceil32(_212)]
            if ceil32(_212) <= _212:
                revert with 0, 32, _212, mem[mem[64] + 68 len ceil32(_212)]
            mem[mem[64] + _212 + 68] = 0
            revert with memory
              from mem[64]
               len _973 + ceil32(_212) + -mem[64] + 68
        mem[ceil32(return_data.size) + _212 + 129] = 0
        _1037 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _212
        mem[mem[64] + 68 len ceil32(_212)] = mem[ceil32(return_data.size) + 129 len ceil32(_212)]
        if ceil32(_212) <= _212:
            revert with 0, 32, _212, mem[mem[64] + 68 len ceil32(_212)]
        mem[mem[64] + _212 + 68] = 0
        revert with memory
          from mem[64]
           len _1037 + ceil32(_212) + -mem[64] + 68
    if 0xaaaaaddd3f56601bc5be6dd1e2655f9029531788 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _131 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _235 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _131 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_235) <= _235:
                _975 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1089 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _975 + ceil32(_1089) + -mem[64] + 68
            mem[_235 + 128] = 0
            _1039 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1121 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1039 + ceil32(_1121) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _133 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _170 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _237 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _170 + _237 + 68 <= _133 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_237)] = mem[_170 + 164 len ceil32(_237)]
        if ceil32(_237) > _237:
            mem[ceil32(return_data.size) + _237 + 129] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _237
        mem[mem[64] + 68 len ceil32(_237)] = mem[ceil32(return_data.size) + 129 len ceil32(_237)]
        if ceil32(_237) > _237:
            mem[mem[64] + _237 + 68] = 0
        revert with 0, 32, _237, mem[mem[64] + 68 len ceil32(_237)]
    if 0xaaaaa3f91b2d4b714526d0096485fa34b63f8807 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _149 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _259 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _149 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_259) <= _259:
                _979 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1091 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _979 + ceil32(_1091) + -mem[64] + 68
            mem[_259 + 128] = 0
            _1043 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1123 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1043 + ceil32(_1123) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _151 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _192 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _261 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _192 + _261 + 68 <= _151 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_261)] = mem[_192 + 164 len ceil32(_261)]
        if ceil32(_261) > _261:
            mem[ceil32(return_data.size) + _261 + 129] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _261
        mem[mem[64] + 68 len ceil32(_261)] = mem[ceil32(return_data.size) + 129 len ceil32(_261)]
        if ceil32(_261) > _261:
            mem[mem[64] + _261 + 68] = 0
        revert with 0, 32, _261, mem[mem[64] + 68 len ceil32(_261)]
    if 0xaaaaaf4acd6e97219e35a807aab2c041283df5fe == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _172 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _285 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _172 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_285) <= _285:
                _983 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1093 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _983 + ceil32(_1093) + -mem[64] + 68
            mem[_285 + 128] = 0
            _1047 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1125 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1047 + ceil32(_1125) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _174 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _218 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _287 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _218 + _287 + 68 <= _174 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_287)] = mem[_218 + 164 len ceil32(_287)]
        if ceil32(_287) <= _287:
            _985 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _287
            mem[mem[64] + 68 len ceil32(_287)] = mem[ceil32(return_data.size) + 129 len ceil32(_287)]
            if ceil32(_287) <= _287:
                revert with 0, 32, _287, mem[mem[64] + 68 len ceil32(_287)]
            mem[mem[64] + _287 + 68] = 0
            revert with memory
              from mem[64]
               len _985 + ceil32(_287) + -mem[64] + 68
        mem[ceil32(return_data.size) + _287 + 129] = 0
        _1049 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _287
        mem[mem[64] + 68 len ceil32(_287)] = mem[ceil32(return_data.size) + 129 len ceil32(_287)]
        if ceil32(_287) <= _287:
            revert with 0, 32, _287, mem[mem[64] + 68 len ceil32(_287)]
        mem[mem[64] + _287 + 68] = 0
        revert with memory
          from mem[64]
           len _1049 + ceil32(_287) + -mem[64] + 68
    if 0xaaaaa6ff8986a294e5a817187921ae47bddfbff4 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _194 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _313 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _194 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_313) <= _313:
                _987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1095 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _987 + ceil32(_1095) + -mem[64] + 68
            mem[_313 + 128] = 0
            _1051 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1127 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1051 + ceil32(_1127) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _196 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _243 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _315 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _243 + _315 + 68 <= _196 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_315)] = mem[_243 + 164 len ceil32(_315)]
        if ceil32(_315) > _315:
            mem[ceil32(return_data.size) + _315 + 129] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _315
        mem[mem[64] + 68 len ceil32(_315)] = mem[ceil32(return_data.size) + 129 len ceil32(_315)]
        if ceil32(_315) > _315:
            mem[mem[64] + _315 + 68] = 0
        revert with 0, 32, _315, mem[mem[64] + 68 len ceil32(_315)]
    if 0xaaaaa328bd652d0cb9e7a112476fc1aff458a9c4 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _220 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _339 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _220 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_339) <= _339:
                _991 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1097 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _991 + ceil32(_1097) + -mem[64] + 68
            mem[_339 + 128] = 0
            _1055 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1129 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1055 + ceil32(_1129) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _222 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _267 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _341 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _267 + _341 + 68 <= _222 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_341)] = mem[_267 + 164 len ceil32(_341)]
        if ceil32(_341) > _341:
            mem[ceil32(return_data.size) + _341 + 129] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _341
        mem[mem[64] + 68 len ceil32(_341)] = mem[ceil32(return_data.size) + 129 len ceil32(_341)]
        if ceil32(_341) > _341:
            mem[mem[64] + _341 + 68] = 0
        revert with 0, 32, _341, mem[mem[64] + 68 len ceil32(_341)]
    if 0xaaaaa2789cdc3c97c1dce79ac1a1a163f014d882 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _245 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _363 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _245 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_363) <= _363:
                _995 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1099 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _995 + ceil32(_1099) + -mem[64] + 68
            mem[_363 + 128] = 0
            _1059 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1131 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1059 + ceil32(_1131) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _247 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _293 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _365 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _293 + _365 + 68 <= _247 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_365)] = mem[_293 + 164 len ceil32(_365)]
        if ceil32(_365) > _365:
            mem[ceil32(return_data.size) + _365 + 129] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _365
        mem[mem[64] + 68 len ceil32(_365)] = mem[ceil32(return_data.size) + 129 len ceil32(_365)]
        if ceil32(_365) > _365:
            mem[mem[64] + _365 + 68] = 0
        revert with 0, 32, _365, mem[mem[64] + 68 len ceil32(_365)]
    if 0xaaaaa3a7370d91a983067503573a55a2bc3ec1ca == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _269 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _389 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _269 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_389) <= _389:
                _999 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1101 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _999 + ceil32(_1101) + -mem[64] + 68
            mem[_389 + 128] = 0
            _1063 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1133 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1063 + ceil32(_1133) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _271 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _321 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _391 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _321 + _391 + 68 <= _271 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_391)] = mem[_321 + 164 len ceil32(_391)]
        if ceil32(_391) <= _391:
            _1001 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _391
            mem[mem[64] + 68 len ceil32(_391)] = mem[ceil32(return_data.size) + 129 len ceil32(_391)]
            if ceil32(_391) <= _391:
                revert with 0, 32, _391, mem[mem[64] + 68 len ceil32(_391)]
            mem[mem[64] + _391 + 68] = 0
            revert with memory
              from mem[64]
               len _1001 + ceil32(_391) + -mem[64] + 68
        mem[ceil32(return_data.size) + _391 + 129] = 0
        _1065 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _391
        mem[mem[64] + 68 len ceil32(_391)] = mem[ceil32(return_data.size) + 129 len ceil32(_391)]
        if ceil32(_391) <= _391:
            revert with 0, 32, _391, mem[mem[64] + 68 len ceil32(_391)]
        mem[mem[64] + _391 + 68] = 0
        revert with memory
          from mem[64]
           len _1065 + ceil32(_391) + -mem[64] + 68
    if 0xaaaaab018316f37951e2894585c160514f495582 == msg.sender:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        delegate address(arg1) with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if delegate.return_code:
                if uint8(arg3):
                    if (16 * calldata.size) + 21000 > 50000:
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
            if mem[96] < 68:
                revert with 0, 'ER', 0
            _295 = mem[100]
            require mem[100] >= 32
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _411 = mem[mem[132] + 132]
            require mem[mem[132] + 132] <= test266151307()
            require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
            mem[64] = ceil32(mem[mem[132] + 132]) + 128
            mem[96] = mem[mem[132] + 132]
            require mem[132] + mem[mem[132] + 132] + 164 <= _295 + 132
            mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
            if ceil32(_411) <= _411:
                _1003 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1103 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len _1003 + ceil32(_1103) + -mem[64] + 68
            mem[_411 + 128] = 0
            _1067 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1135 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1067 + ceil32(_1135) + -mem[64] + 68
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if return_data.size < 68:
            revert with 0, 'ER', 0
        _297 = Mask(224, 0, return_data.size), mem[128 len 4]
        require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
        _347 = mem[132]
        require mem[132] <= test266151307()
        require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
        _413 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
        mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
        require _347 + _413 + 68 <= _297 + 36
        mem[ceil32(return_data.size) + 129 len ceil32(_413)] = mem[_347 + 164 len ceil32(_413)]
        if ceil32(_413) > _413:
            mem[ceil32(return_data.size) + _413 + 129] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _413
        mem[mem[64] + 68 len ceil32(_413)] = mem[ceil32(return_data.size) + 129 len ceil32(_413)]
        if ceil32(_413) > _413:
            mem[mem[64] + _413 + 68] = 0
        revert with 0, 32, _413, mem[mem[64] + 68 len ceil32(_413)]
    if msg.sender != 0xaaaaad2b13cf538d5295c53c65acb7185036d0c8:
        revert with 0, 'NS'
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    delegate address(arg1) with:
         gas gas_remaining wei
        args arg2[all]
    if not return_data.size:
        if delegate.return_code:
            if uint8(arg3):
                if (16 * calldata.size) + 21000 > 50000:
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
        if mem[96] < 68:
            revert with 0, 'ER', 0
        _323 = mem[100]
        require mem[100] >= 32
        require mem[132] <= test266151307()
        require mem[132] + 163 < mem[100] + 132
        _431 = mem[mem[132] + 132]
        require mem[mem[132] + 132] <= test266151307()
        require ceil32(mem[mem[132] + 132]) + 128 <= test266151307() and ceil32(mem[mem[132] + 132]) + 128 >= 96
        mem[64] = ceil32(mem[mem[132] + 132]) + 128
        mem[96] = mem[mem[132] + 132]
        require mem[132] + mem[mem[132] + 132] + 164 <= _323 + 132
        mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
        if ceil32(_431) <= _431:
            _1007 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1105 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len _1007 + ceil32(_1105) + -mem[64] + 68
        mem[_431 + 128] = 0
        _1071 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1137 = mem[96]
        mem[mem[64] + 36] = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 68] = 0
        revert with memory
          from mem[64]
           len _1071 + ceil32(_1137) + -mem[64] + 68
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
        if uint8(arg3):
            if (16 * calldata.size) + 21000 > 50000:
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((16 * calldata.size) + 35154 / 41947 * uint8(arg3) / 255)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
    if return_data.size < 68:
        revert with 0, 'ER', 0
    _325 = Mask(224, 0, return_data.size), mem[128 len 4]
    require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
    _371 = mem[132]
    require mem[132] <= test266151307()
    require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
    _433 = mem[mem[132] + 132]
    require mem[mem[132] + 132] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129 <= test266151307() and ceil32(mem[mem[132] + 132]) + 129 >= 97
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[132] + 132]) + 129
    mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
    require _371 + _433 + 68 <= _325 + 36
    mem[ceil32(return_data.size) + 129 len ceil32(_433)] = mem[_371 + 164 len ceil32(_433)]
    if ceil32(_433) <= _433:
        _1009 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _433
        mem[mem[64] + 68 len ceil32(_433)] = mem[ceil32(return_data.size) + 129 len ceil32(_433)]
        if ceil32(_433) <= _433:
            revert with 0, 32, _433, mem[mem[64] + 68 len ceil32(_433)]
        mem[mem[64] + _433 + 68] = 0
        revert with memory
          from mem[64]
           len _1009 + ceil32(_433) + -mem[64] + 68
    mem[ceil32(return_data.size) + _433 + 129] = 0
    _1073 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _433
    mem[mem[64] + 68 len ceil32(_433)] = mem[ceil32(return_data.size) + 129 len ceil32(_433)]
    if ceil32(_433) <= _433:
        revert with 0, 32, _433, mem[mem[64] + 68 len ceil32(_433)]
    mem[mem[64] + _433 + 68] = 0
    revert with memory
      from mem[64]
       len _1073 + ceil32(_433) + -mem[64] + 68
}

function sub_7f8848e5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == uint8(cd[68])
    if 0xaaaaaeb932c0527655baff3bbbe3264bc61271e8 == msg.sender:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require idx < ('cd', 36).length
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
            delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                 gas gas_remaining wei
                args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if delegate.return_code:
                    idx = idx + 1
                    continue 
                if mem[96] < 68:
                    _964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_964] = 2
                    mem[_964 + 32] = 'ER'
                    _1028 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[_1028 + idx + 68] = mem[_964 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1028 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _1028 + -mem[64] + 100
                _963 = mem[100]
                require mem[100] >= 32
                _1027 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _1091 = mem[mem[132] + 132]
                require mem[mem[132] + 132] <= test266151307()
                _1155 = mem[64]
                require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                mem[_1155] = mem[mem[132] + 132]
                require _1027 + _1091 + 164 <= _963 + 132
                idx = 0
                while idx < _1091:
                    mem[_1155 + idx + 32] = mem[_1027 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_1091) <= _1091:
                    _1699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1827 = mem[_1155]
                    mem[mem[64] + 36] = mem[_1155]
                    idx = 0
                    while idx < _1827:
                        mem[_1699 + idx + 68] = mem[_1155 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1827) > _1827:
                        mem[_1699 + _1827 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _1699 + ceil32(_1827) + -mem[64] + 68
                mem[_1155 + _1091 + 32] = 0
                _1763 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1859 = mem[_1155]
                mem[mem[64] + 36] = mem[_1155]
                idx = 0
                while idx < _1859:
                    mem[_1763 + idx + 68] = mem[_1155 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1859) > _1859:
                    mem[_1763 + _1859 + 68] = 0
                revert with memory
                  from mem[64]
                   len _1763 + ceil32(_1859) + -mem[64] + 68
            _915 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_915] = return_data.size
            mem[_915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                idx = idx + 1
                continue 
            if return_data.size < 68:
                _966 = mem[64]
                mem[64] = mem[64] + 64
                mem[_966] = 2
                mem[_966 + 32] = 'ER'
                _1030 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 2
                idx = 0
                while idx < 2:
                    mem[_1030 + idx + 68] = mem[_966 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1030 + 70] = 0
                revert with memory
                  from mem[64]
                   len _1030 + -mem[64] + 100
            _965 = Mask(224, 0, return_data.size), mem[_915 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_915 + 32 len 4] >= 32
            _1029 = mem[_915 + 36]
            require mem[_915 + 36] <= test266151307()
            require _915 + mem[_915 + 36] + 67 < _915 + Mask(224, 0, return_data.size), mem[_915 + 32 len 4] + 36
            _1093 = mem[_915 + mem[_915 + 36] + 36]
            require mem[_915 + mem[_915 + 36] + 36] <= test266151307()
            _1156 = mem[64]
            require mem[64] + ceil32(mem[_915 + mem[_915 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_915 + mem[_915 + 36] + 36]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[_915 + mem[_915 + 36] + 36]) + 32
            mem[_1156] = _1093
            require _1029 + _1093 + 68 <= _965 + 36
            idx = 0
            while idx < _1093:
                mem[_1156 + idx + 32] = mem[_915 + _1029 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_1093) <= _1093:
                _1701 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _1093
                idx = 0
                while idx < _1093:
                    mem[_1701 + idx + 68] = mem[_1156 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1093) > _1093:
                    mem[_1701 + _1093 + 68] = 0
                revert with memory
                  from mem[64]
                   len _1701 + ceil32(_1093) + -mem[64] + 68
            mem[_1156 + _1093 + 32] = 0
            _1765 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _1093
            idx = 0
            while idx < _1093:
                mem[_1765 + idx + 68] = mem[_1156 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1093) > _1093:
                mem[_1765 + _1093 + 68] = 0
            revert with memory
              from mem[64]
               len _1765 + ceil32(_1093) + -mem[64] + 68
        if uint8(cd[68]):
            if (16 * calldata.size) + 21000 > 50000:
                mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _851 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_851] == mem[_851]
    else:
        if 0xaaaaaf4bf78e014af3a25dbc702e7493fb3b98c8 == msg.sender:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require idx < ('cd', 36).length
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if delegate.return_code:
                        idx = idx + 1
                        continue 
                    if mem[96] < 68:
                        _968 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_968] = 2
                        mem[_968 + 32] = 'ER'
                        _1032 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[_1032 + idx + 68] = mem[_968 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1032 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _1032 + -mem[64] + 100
                    _967 = mem[100]
                    require mem[100] >= 32
                    _1031 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _1095 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _1157 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_1157] = mem[mem[132] + 132]
                    require _1031 + _1095 + 164 <= _967 + 132
                    idx = 0
                    while idx < _1095:
                        mem[_1157 + idx + 32] = mem[_1031 + idx + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_1095) <= _1095:
                        _1703 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1829 = mem[_1157]
                        mem[mem[64] + 36] = mem[_1157]
                        idx = 0
                        while idx < _1829:
                            mem[_1703 + idx + 68] = mem[_1157 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1829) > _1829:
                            mem[_1703 + _1829 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _1703 + ceil32(_1829) + -mem[64] + 68
                    mem[_1157 + _1095 + 32] = 0
                    _1767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1861 = mem[_1157]
                    mem[mem[64] + 36] = mem[_1157]
                    idx = 0
                    while idx < _1861:
                        mem[_1767 + idx + 68] = mem[_1157 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1861) > _1861:
                        mem[_1767 + _1861 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _1767 + ceil32(_1861) + -mem[64] + 68
                _916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_916] = return_data.size
                mem[_916 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    idx = idx + 1
                    continue 
                if return_data.size < 68:
                    _970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_970] = 2
                    mem[_970 + 32] = 'ER'
                    _1034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 2
                    idx = 0
                    while idx < 2:
                        mem[_1034 + idx + 68] = mem[_970 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1034 + 70] = 0
                    revert with memory
                      from mem[64]
                       len _1034 + -mem[64] + 100
                _969 = Mask(224, 0, return_data.size), mem[_916 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_916 + 32 len 4] >= 32
                _1033 = mem[_916 + 36]
                require mem[_916 + 36] <= test266151307()
                require _916 + mem[_916 + 36] + 67 < _916 + Mask(224, 0, return_data.size), mem[_916 + 32 len 4] + 36
                _1097 = mem[_916 + mem[_916 + 36] + 36]
                require mem[_916 + mem[_916 + 36] + 36] <= test266151307()
                _1158 = mem[64]
                require mem[64] + ceil32(mem[_916 + mem[_916 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_916 + mem[_916 + 36] + 36]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[_916 + mem[_916 + 36] + 36]) + 32
                mem[_1158] = _1097
                require _1033 + _1097 + 68 <= _969 + 36
                idx = 0
                while idx < _1097:
                    mem[_1158 + idx + 32] = mem[_916 + _1033 + idx + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_1097) <= _1097:
                    _1705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1097
                    idx = 0
                    while idx < _1097:
                        mem[_1705 + idx + 68] = mem[_1158 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1097) > _1097:
                        mem[_1705 + _1097 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _1705 + ceil32(_1097) + -mem[64] + 68
                mem[_1158 + _1097 + 32] = 0
                _1769 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _1097
                idx = 0
                while idx < _1097:
                    mem[_1769 + idx + 68] = mem[_1158 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1097) > _1097:
                    mem[_1769 + _1097 + 68] = 0
                revert with memory
                  from mem[64]
                   len _1769 + ceil32(_1097) + -mem[64] + 68
            if uint8(cd[68]):
                if (16 * calldata.size) + 21000 > 50000:
                    mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _852 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_852] == mem[_852]
        else:
            if 0xaaaaa22233cf3a2eefacb085f5e2d828fb47f458 == msg.sender:
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require idx < ('cd', 36).length
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                    delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if not return_data.size:
                        if delegate.return_code:
                            idx = idx + 1
                            continue 
                        if mem[96] < 68:
                            _972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_972] = 2
                            mem[_972 + 32] = 'ER'
                            _1036 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 2
                            idx = 0
                            while idx < 2:
                                mem[_1036 + idx + 68] = mem[_972 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1036 + 70] = 0
                            revert with memory
                              from mem[64]
                               len _1036 + -mem[64] + 100
                        _971 = mem[100]
                        require mem[100] >= 32
                        _1035 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1099 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _1159 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_1159] = mem[mem[132] + 132]
                        require _1035 + _1099 + 164 <= _971 + 132
                        idx = 0
                        while idx < _1099:
                            mem[_1159 + idx + 32] = mem[_1035 + idx + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_1099) <= _1099:
                            _1707 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1831 = mem[_1159]
                            mem[mem[64] + 36] = mem[_1159]
                            idx = 0
                            while idx < _1831:
                                mem[_1707 + idx + 68] = mem[_1159 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1831) > _1831:
                                mem[_1707 + _1831 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _1707 + ceil32(_1831) + -mem[64] + 68
                        mem[_1159 + _1099 + 32] = 0
                        _1771 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1863 = mem[_1159]
                        mem[mem[64] + 36] = mem[_1159]
                        idx = 0
                        while idx < _1863:
                            mem[_1771 + idx + 68] = mem[_1159 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1863) > _1863:
                            mem[_1771 + _1863 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _1771 + ceil32(_1863) + -mem[64] + 68
                    _917 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_917] = return_data.size
                    mem[_917 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        idx = idx + 1
                        continue 
                    if return_data.size < 68:
                        _974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_974] = 2
                        mem[_974 + 32] = 'ER'
                        _1038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 2
                        idx = 0
                        while idx < 2:
                            mem[_1038 + idx + 68] = mem[_974 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1038 + 70] = 0
                        revert with memory
                          from mem[64]
                           len _1038 + -mem[64] + 100
                    _973 = Mask(224, 0, return_data.size), mem[_917 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_917 + 32 len 4] >= 32
                    _1037 = mem[_917 + 36]
                    require mem[_917 + 36] <= test266151307()
                    require _917 + mem[_917 + 36] + 67 < _917 + Mask(224, 0, return_data.size), mem[_917 + 32 len 4] + 36
                    _1101 = mem[_917 + mem[_917 + 36] + 36]
                    require mem[_917 + mem[_917 + 36] + 36] <= test266151307()
                    _1160 = mem[64]
                    require mem[64] + ceil32(mem[_917 + mem[_917 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_917 + mem[_917 + 36] + 36]) + 32 >= mem[64]
                    mem[64] = mem[64] + ceil32(mem[_917 + mem[_917 + 36] + 36]) + 32
                    mem[_1160] = _1101
                    require _1037 + _1101 + 68 <= _973 + 36
                    idx = 0
                    while idx < _1101:
                        mem[_1160 + idx + 32] = mem[_917 + _1037 + idx + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_1101) <= _1101:
                        _1709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1101
                        idx = 0
                        while idx < _1101:
                            mem[_1709 + idx + 68] = mem[_1160 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1101) > _1101:
                            mem[_1709 + _1101 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _1709 + ceil32(_1101) + -mem[64] + 68
                    mem[_1160 + _1101 + 32] = 0
                    _1773 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1101
                    idx = 0
                    while idx < _1101:
                        mem[_1773 + idx + 68] = mem[_1160 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1101) > _1101:
                        mem[_1773 + _1101 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _1773 + ceil32(_1101) + -mem[64] + 68
                if uint8(cd[68]):
                    if (16 * calldata.size) + 21000 > 50000:
                        mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_853] == mem[_853]
            else:
                if 0xaaaaa85601e05dfa39cf4a0a037dd371a0db8887 == msg.sender:
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < ('cd', 36).length
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                        mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                        delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                             gas gas_remaining wei
                            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                        if not return_data.size:
                            if delegate.return_code:
                                idx = idx + 1
                                continue 
                            if mem[96] < 68:
                                _976 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_976] = 2
                                mem[_976 + 32] = 'ER'
                                _1040 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 2
                                idx = 0
                                while idx < 2:
                                    mem[_1040 + idx + 68] = mem[_976 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1040 + 70] = 0
                                revert with memory
                                  from mem[64]
                                   len _1040 + -mem[64] + 100
                            _975 = mem[100]
                            require mem[100] >= 32
                            _1039 = mem[132]
                            require mem[132] <= test266151307()
                            require mem[132] + 163 < mem[100] + 132
                            _1103 = mem[mem[132] + 132]
                            require mem[mem[132] + 132] <= test266151307()
                            _1161 = mem[64]
                            require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                            mem[_1161] = mem[mem[132] + 132]
                            require _1039 + _1103 + 164 <= _975 + 132
                            idx = 0
                            while idx < _1103:
                                mem[_1161 + idx + 32] = mem[_1039 + idx + 164]
                                idx = idx + 32
                                continue 
                            if ceil32(_1103) <= _1103:
                                _1711 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _1833 = mem[_1161]
                                mem[mem[64] + 36] = mem[_1161]
                                idx = 0
                                while idx < _1833:
                                    mem[_1711 + idx + 68] = mem[_1161 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1833) > _1833:
                                    mem[_1711 + _1833 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len _1711 + ceil32(_1833) + -mem[64] + 68
                            mem[_1161 + _1103 + 32] = 0
                            _1775 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1865 = mem[_1161]
                            mem[mem[64] + 36] = mem[_1161]
                            idx = 0
                            while idx < _1865:
                                mem[_1775 + idx + 68] = mem[_1161 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1865) > _1865:
                                mem[_1775 + _1865 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _1775 + ceil32(_1865) + -mem[64] + 68
                        _918 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_918] = return_data.size
                        mem[_918 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            idx = idx + 1
                            continue 
                        if return_data.size < 68:
                            _978 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_978] = 2
                            mem[_978 + 32] = 'ER'
                            _1042 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 2
                            idx = 0
                            while idx < 2:
                                mem[_1042 + idx + 68] = mem[_978 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1042 + 70] = 0
                            revert with memory
                              from mem[64]
                               len _1042 + -mem[64] + 100
                        _977 = Mask(224, 0, return_data.size), mem[_918 + 32 len 4]
                        require Mask(224, 0, return_data.size), mem[_918 + 32 len 4] >= 32
                        _1041 = mem[_918 + 36]
                        require mem[_918 + 36] <= test266151307()
                        require _918 + mem[_918 + 36] + 67 < _918 + Mask(224, 0, return_data.size), mem[_918 + 32 len 4] + 36
                        _1105 = mem[_918 + mem[_918 + 36] + 36]
                        require mem[_918 + mem[_918 + 36] + 36] <= test266151307()
                        _1162 = mem[64]
                        require mem[64] + ceil32(mem[_918 + mem[_918 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_918 + mem[_918 + 36] + 36]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_918 + mem[_918 + 36] + 36]) + 32
                        mem[_1162] = _1105
                        require _1041 + _1105 + 68 <= _977 + 36
                        idx = 0
                        while idx < _1105:
                            mem[_1162 + idx + 32] = mem[_918 + _1041 + idx + 68]
                            idx = idx + 32
                            continue 
                        if ceil32(_1105) <= _1105:
                            _1713 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = _1105
                            idx = 0
                            while idx < _1105:
                                mem[_1713 + idx + 68] = mem[_1162 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1105) > _1105:
                                mem[_1713 + _1105 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _1713 + ceil32(_1105) + -mem[64] + 68
                        mem[_1162 + _1105 + 32] = 0
                        _1777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1105
                        idx = 0
                        while idx < _1105:
                            mem[_1777 + idx + 68] = mem[_1162 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1105) > _1105:
                            mem[_1777 + _1105 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _1777 + ceil32(_1105) + -mem[64] + 68
                    if uint8(cd[68]):
                        if (16 * calldata.size) + 21000 > 50000:
                            mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                            require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                            call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _854 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_854] == mem[_854]
                else:
                    if 0xaaaaa29a382baa888655841a3d9af997044fc8c9 == msg.sender:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            require idx < ('cd', 36).length
                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                            delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                                 gas gas_remaining wei
                                args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                            if not return_data.size:
                                if delegate.return_code:
                                    idx = idx + 1
                                    continue 
                                if mem[96] < 68:
                                    _980 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_980] = 2
                                    mem[_980 + 32] = 'ER'
                                    _1044 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 2
                                    idx = 0
                                    while idx < 2:
                                        mem[_1044 + idx + 68] = mem[_980 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1044 + 70] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1044 + -mem[64] + 100
                                _979 = mem[100]
                                require mem[100] >= 32
                                _1043 = mem[132]
                                require mem[132] <= test266151307()
                                require mem[132] + 163 < mem[100] + 132
                                _1107 = mem[mem[132] + 132]
                                require mem[mem[132] + 132] <= test266151307()
                                _1163 = mem[64]
                                require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                mem[_1163] = mem[mem[132] + 132]
                                require _1043 + _1107 + 164 <= _979 + 132
                                idx = 0
                                while idx < _1107:
                                    mem[_1163 + idx + 32] = mem[_1043 + idx + 164]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1107) <= _1107:
                                    _1715 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _1835 = mem[_1163]
                                    mem[mem[64] + 36] = mem[_1163]
                                    idx = 0
                                    while idx < _1835:
                                        mem[_1715 + idx + 68] = mem[_1163 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_1835) > _1835:
                                        mem[_1715 + _1835 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1715 + ceil32(_1835) + -mem[64] + 68
                                mem[_1163 + _1107 + 32] = 0
                                _1779 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _1867 = mem[_1163]
                                mem[mem[64] + 36] = mem[_1163]
                                idx = 0
                                while idx < _1867:
                                    mem[_1779 + idx + 68] = mem[_1163 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1867) > _1867:
                                    mem[_1779 + _1867 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len _1779 + ceil32(_1867) + -mem[64] + 68
                            _919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_919] = return_data.size
                            mem[_919 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                idx = idx + 1
                                continue 
                            if return_data.size < 68:
                                _982 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_982] = 2
                                mem[_982 + 32] = 'ER'
                                _1046 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 2
                                idx = 0
                                while idx < 2:
                                    mem[_1046 + idx + 68] = mem[_982 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1046 + 70] = 0
                                revert with memory
                                  from mem[64]
                                   len _1046 + -mem[64] + 100
                            _981 = Mask(224, 0, return_data.size), mem[_919 + 32 len 4]
                            require Mask(224, 0, return_data.size), mem[_919 + 32 len 4] >= 32
                            _1045 = mem[_919 + 36]
                            require mem[_919 + 36] <= test266151307()
                            require _919 + mem[_919 + 36] + 67 < _919 + Mask(224, 0, return_data.size), mem[_919 + 32 len 4] + 36
                            _1109 = mem[_919 + mem[_919 + 36] + 36]
                            require mem[_919 + mem[_919 + 36] + 36] <= test266151307()
                            _1164 = mem[64]
                            require mem[64] + ceil32(mem[_919 + mem[_919 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_919 + mem[_919 + 36] + 36]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_919 + mem[_919 + 36] + 36]) + 32
                            mem[_1164] = _1109
                            require _1045 + _1109 + 68 <= _981 + 36
                            idx = 0
                            while idx < _1109:
                                mem[_1164 + idx + 32] = mem[_919 + _1045 + idx + 68]
                                idx = idx + 32
                                continue 
                            if ceil32(_1109) <= _1109:
                                _1717 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = _1109
                                idx = 0
                                while idx < _1109:
                                    mem[_1717 + idx + 68] = mem[_1164 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1109) > _1109:
                                    mem[_1717 + _1109 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len _1717 + ceil32(_1109) + -mem[64] + 68
                            mem[_1164 + _1109 + 32] = 0
                            _1781 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = _1109
                            idx = 0
                            while idx < _1109:
                                mem[_1781 + idx + 68] = mem[_1164 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1109) > _1109:
                                mem[_1781 + _1109 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _1781 + ceil32(_1109) + -mem[64] + 68
                        if uint8(cd[68]):
                            if (16 * calldata.size) + 21000 > 50000:
                                mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _855 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_855] == mem[_855]
                    else:
                        if 0xaaaaa0bfa6a92ad1531b2aa438bdddf50dca7ee2 == msg.sender:
                            idx = 0
                            while idx < ('cd', 4).length:
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                require idx < ('cd', 36).length
                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                _888 = mem[64]
                                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _888 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                                if not return_data.size:
                                    if delegate.return_code:
                                        idx = idx + 1
                                        continue 
                                    if mem[96] < 68:
                                        _984 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_984] = 2
                                        mem[_984 + 32] = 'ER'
                                        _1048 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 2
                                        idx = 0
                                        while idx < 2:
                                            mem[_1048 + idx + 68] = mem[_984 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1048 + 70] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1048 + -mem[64] + 100
                                    _983 = mem[100]
                                    require mem[100] >= 32
                                    _1047 = mem[132]
                                    require mem[132] <= test266151307()
                                    require mem[132] + 163 < mem[100] + 132
                                    _1111 = mem[mem[132] + 132]
                                    require mem[mem[132] + 132] <= test266151307()
                                    _1165 = mem[64]
                                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                    mem[_1165] = mem[mem[132] + 132]
                                    require _1047 + _1111 + 164 <= _983 + 132
                                    idx = 0
                                    while idx < _1111:
                                        mem[_1165 + idx + 32] = mem[_1047 + idx + 164]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_1111) <= _1111:
                                        _1719 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        _1837 = mem[_1165]
                                        mem[mem[64] + 36] = mem[_1165]
                                        idx = 0
                                        while idx < _1837:
                                            mem[_1719 + idx + 68] = mem[_1165 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1837) > _1837:
                                            mem[_1719 + _1837 + 68] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1719 + ceil32(_1837) + -mem[64] + 68
                                    mem[_1165 + _1111 + 32] = 0
                                    _1783 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _1869 = mem[_1165]
                                    mem[mem[64] + 36] = mem[_1165]
                                    idx = 0
                                    while idx < _1869:
                                        mem[_1783 + idx + 68] = mem[_1165 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_1869) > _1869:
                                        mem[_1783 + _1869 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1783 + ceil32(_1869) + -mem[64] + 68
                                _920 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_920] = return_data.size
                                mem[_920 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    idx = idx + 1
                                    continue 
                                if return_data.size < 68:
                                    _986 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_986] = 2
                                    mem[_986 + 32] = 'ER'
                                    _1050 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 2
                                    idx = 0
                                    while idx < 2:
                                        mem[_1050 + idx + 68] = mem[_986 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1050 + 70] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1050 + -mem[64] + 100
                                _985 = Mask(224, 0, return_data.size), mem[_920 + 32 len 4]
                                require Mask(224, 0, return_data.size), mem[_920 + 32 len 4] >= 32
                                _1049 = mem[_920 + 36]
                                require mem[_920 + 36] <= test266151307()
                                require _920 + mem[_920 + 36] + 67 < _920 + Mask(224, 0, return_data.size), mem[_920 + 32 len 4] + 36
                                _1113 = mem[_920 + mem[_920 + 36] + 36]
                                require mem[_920 + mem[_920 + 36] + 36] <= test266151307()
                                _1166 = mem[64]
                                require mem[64] + ceil32(mem[_920 + mem[_920 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_920 + mem[_920 + 36] + 36]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_920 + mem[_920 + 36] + 36]) + 32
                                mem[_1166] = _1113
                                require _1049 + _1113 + 68 <= _985 + 36
                                idx = 0
                                while idx < _1113:
                                    mem[_1166 + idx + 32] = mem[_920 + _1049 + idx + 68]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1113) <= _1113:
                                    _1721 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = _1113
                                    idx = 0
                                    while idx < _1113:
                                        mem[_1721 + idx + 68] = mem[_1166 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_1113) > _1113:
                                        mem[_1721 + _1113 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1721 + ceil32(_1113) + -mem[64] + 68
                                mem[_1166 + _1113 + 32] = 0
                                _1785 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = _1113
                                idx = 0
                                while idx < _1113:
                                    mem[_1785 + idx + 68] = mem[_1166 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_1113) > _1113:
                                    mem[_1785 + _1113 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len _1785 + ceil32(_1113) + -mem[64] + 68
                            if uint8(cd[68]):
                                if (16 * calldata.size) + 21000 > 50000:
                                    mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _856 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_856] == mem[_856]
                        else:
                            if 0xaaaaa319f89a58f7e0cfd2c86f2d7047aa0c32d7 == msg.sender:
                                idx = 0
                                while idx < ('cd', 4).length:
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    require idx < ('cd', 36).length
                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                    _889 = mem[64]
                                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                    delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _889 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                                    if not return_data.size:
                                        if delegate.return_code:
                                            idx = idx + 1
                                            continue 
                                        if mem[96] < 68:
                                            _988 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_988] = 2
                                            mem[_988 + 32] = 'ER'
                                            _1052 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 2
                                            idx = 0
                                            while idx < 2:
                                                mem[_1052 + idx + 68] = mem[_988 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1052 + 70] = 0
                                            revert with memory
                                              from mem[64]
                                               len _1052 + -mem[64] + 100
                                        _987 = mem[100]
                                        require mem[100] >= 32
                                        _1051 = mem[132]
                                        require mem[132] <= test266151307()
                                        require mem[132] + 163 < mem[100] + 132
                                        _1115 = mem[mem[132] + 132]
                                        require mem[mem[132] + 132] <= test266151307()
                                        _1167 = mem[64]
                                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                        mem[_1167] = mem[mem[132] + 132]
                                        require _1051 + _1115 + 164 <= _987 + 132
                                        idx = 0
                                        while idx < _1115:
                                            mem[_1167 + idx + 32] = mem[_1051 + idx + 164]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1115) <= _1115:
                                            _1723 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            _1839 = mem[_1167]
                                            mem[mem[64] + 36] = mem[_1167]
                                            idx = 0
                                            while idx < _1839:
                                                mem[_1723 + idx + 68] = mem[_1167 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_1839) > _1839:
                                                mem[_1723 + _1839 + 68] = 0
                                            revert with memory
                                              from mem[64]
                                               len _1723 + ceil32(_1839) + -mem[64] + 68
                                        mem[_1167 + _1115 + 32] = 0
                                        _1787 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        _1871 = mem[_1167]
                                        mem[mem[64] + 36] = mem[_1167]
                                        idx = 0
                                        while idx < _1871:
                                            mem[_1787 + idx + 68] = mem[_1167 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1871) > _1871:
                                            mem[_1787 + _1871 + 68] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1787 + ceil32(_1871) + -mem[64] + 68
                                    _921 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_921] = return_data.size
                                    mem[_921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if delegate.return_code:
                                        idx = idx + 1
                                        continue 
                                    if return_data.size < 68:
                                        _990 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_990] = 2
                                        mem[_990 + 32] = 'ER'
                                        _1054 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 2
                                        idx = 0
                                        while idx < 2:
                                            mem[_1054 + idx + 68] = mem[_990 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1054 + 70] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1054 + -mem[64] + 100
                                    _989 = Mask(224, 0, return_data.size), mem[_921 + 32 len 4]
                                    require Mask(224, 0, return_data.size), mem[_921 + 32 len 4] >= 32
                                    _1053 = mem[_921 + 36]
                                    require mem[_921 + 36] <= test266151307()
                                    require _921 + mem[_921 + 36] + 67 < _921 + Mask(224, 0, return_data.size), mem[_921 + 32 len 4] + 36
                                    _1117 = mem[_921 + mem[_921 + 36] + 36]
                                    require mem[_921 + mem[_921 + 36] + 36] <= test266151307()
                                    _1168 = mem[64]
                                    require mem[64] + ceil32(mem[_921 + mem[_921 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_921 + mem[_921 + 36] + 36]) + 32 >= mem[64]
                                    mem[64] = mem[64] + ceil32(mem[_921 + mem[_921 + 36] + 36]) + 32
                                    mem[_1168] = _1117
                                    require _1053 + _1117 + 68 <= _989 + 36
                                    idx = 0
                                    while idx < _1117:
                                        mem[_1168 + idx + 32] = mem[_921 + _1053 + idx + 68]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_1117) <= _1117:
                                        _1725 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = _1117
                                        idx = 0
                                        while idx < _1117:
                                            mem[_1725 + idx + 68] = mem[_1168 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1117) > _1117:
                                            mem[_1725 + _1117 + 68] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1725 + ceil32(_1117) + -mem[64] + 68
                                    mem[_1168 + _1117 + 32] = 0
                                    _1789 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = _1117
                                    idx = 0
                                    while idx < _1117:
                                        mem[_1789 + idx + 68] = mem[_1168 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_1117) > _1117:
                                        mem[_1789 + _1117 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1789 + ceil32(_1117) + -mem[64] + 68
                                if uint8(cd[68]):
                                    if (16 * calldata.size) + 21000 > 50000:
                                        mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _857 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_857] == mem[_857]
                            else:
                                if 0xaaaaaddd3f56601bc5be6dd1e2655f9029531788 == msg.sender:
                                    idx = 0
                                    while idx < ('cd', 4).length:
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        require idx < ('cd', 36).length
                                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                        mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                        delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                                             gas gas_remaining wei
                                            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                        if not return_data.size:
                                            if delegate.return_code:
                                                idx = idx + 1
                                                continue 
                                            if mem[96] < 68:
                                                _992 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_992] = 2
                                                mem[_992 + 32] = 'ER'
                                                _1056 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 2
                                                idx = 0
                                                while idx < 2:
                                                    mem[_1056 + idx + 68] = mem[_992 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1056 + 70] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _1056 + -mem[64] + 100
                                            _991 = mem[100]
                                            require mem[100] >= 32
                                            _1055 = mem[132]
                                            require mem[132] <= test266151307()
                                            require mem[132] + 163 < mem[100] + 132
                                            _1119 = mem[mem[132] + 132]
                                            require mem[mem[132] + 132] <= test266151307()
                                            _1169 = mem[64]
                                            require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                            mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                            mem[_1169] = mem[mem[132] + 132]
                                            require _1055 + _1119 + 164 <= _991 + 132
                                            idx = 0
                                            while idx < _1119:
                                                mem[_1169 + idx + 32] = mem[_1055 + idx + 164]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_1119) <= _1119:
                                                _1727 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                _1841 = mem[_1169]
                                                mem[mem[64] + 36] = mem[_1169]
                                                idx = 0
                                                while idx < _1841:
                                                    mem[_1727 + idx + 68] = mem[_1169 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_1841) > _1841:
                                                    mem[_1727 + _1841 + 68] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _1727 + ceil32(_1841) + -mem[64] + 68
                                            mem[_1169 + _1119 + 32] = 0
                                            _1791 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            _1873 = mem[_1169]
                                            mem[mem[64] + 36] = mem[_1169]
                                            idx = 0
                                            while idx < _1873:
                                                mem[_1791 + idx + 68] = mem[_1169 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_1873) > _1873:
                                                mem[_1791 + _1873 + 68] = 0
                                            revert with memory
                                              from mem[64]
                                               len _1791 + ceil32(_1873) + -mem[64] + 68
                                        _922 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_922] = return_data.size
                                        mem[_922 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            idx = idx + 1
                                            continue 
                                        if return_data.size < 68:
                                            _994 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_994] = 2
                                            mem[_994 + 32] = 'ER'
                                            _1058 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 2
                                            idx = 0
                                            while idx < 2:
                                                mem[_1058 + idx + 68] = mem[_994 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1058 + 70] = 0
                                            revert with memory
                                              from mem[64]
                                               len _1058 + -mem[64] + 100
                                        _993 = Mask(224, 0, return_data.size), mem[_922 + 32 len 4]
                                        require Mask(224, 0, return_data.size), mem[_922 + 32 len 4] >= 32
                                        _1057 = mem[_922 + 36]
                                        require mem[_922 + 36] <= test266151307()
                                        require _922 + mem[_922 + 36] + 67 < _922 + Mask(224, 0, return_data.size), mem[_922 + 32 len 4] + 36
                                        _1121 = mem[_922 + mem[_922 + 36] + 36]
                                        require mem[_922 + mem[_922 + 36] + 36] <= test266151307()
                                        _1170 = mem[64]
                                        require mem[64] + ceil32(mem[_922 + mem[_922 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_922 + mem[_922 + 36] + 36]) + 32 >= mem[64]
                                        mem[64] = mem[64] + ceil32(mem[_922 + mem[_922 + 36] + 36]) + 32
                                        mem[_1170] = _1121
                                        require _1057 + _1121 + 68 <= _993 + 36
                                        idx = 0
                                        while idx < _1121:
                                            mem[_1170 + idx + 32] = mem[_922 + _1057 + idx + 68]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1121) <= _1121:
                                            _1729 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = _1121
                                            idx = 0
                                            while idx < _1121:
                                                mem[_1729 + idx + 68] = mem[_1170 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_1121) > _1121:
                                                mem[_1729 + _1121 + 68] = 0
                                            revert with memory
                                              from mem[64]
                                               len _1729 + ceil32(_1121) + -mem[64] + 68
                                        mem[_1170 + _1121 + 32] = 0
                                        _1793 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = _1121
                                        idx = 0
                                        while idx < _1121:
                                            mem[_1793 + idx + 68] = mem[_1170 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1121) > _1121:
                                            mem[_1793 + _1121 + 68] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1793 + ceil32(_1121) + -mem[64] + 68
                                    if uint8(cd[68]):
                                        if (16 * calldata.size) + 21000 > 50000:
                                            mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                            require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                            call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _858 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_858] == mem[_858]
                                else:
                                    if 0xaaaaa3f91b2d4b714526d0096485fa34b63f8807 == msg.sender:
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            require idx < ('cd', 36).length
                                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                            _891 = mem[64]
                                            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                            delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _891 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                                            if not return_data.size:
                                                if delegate.return_code:
                                                    idx = idx + 1
                                                    continue 
                                                if mem[96] < 68:
                                                    _996 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_996] = 2
                                                    mem[_996 + 32] = 'ER'
                                                    _1060 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 2
                                                    idx = 0
                                                    while idx < 2:
                                                        mem[_1060 + idx + 68] = mem[_996 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1060 + 70] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _1060 + -mem[64] + 100
                                                _995 = mem[100]
                                                require mem[100] >= 32
                                                _1059 = mem[132]
                                                require mem[132] <= test266151307()
                                                require mem[132] + 163 < mem[100] + 132
                                                _1123 = mem[mem[132] + 132]
                                                require mem[mem[132] + 132] <= test266151307()
                                                _1171 = mem[64]
                                                require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                mem[_1171] = mem[mem[132] + 132]
                                                require _1059 + _1123 + 164 <= _995 + 132
                                                idx = 0
                                                while idx < _1123:
                                                    mem[_1171 + idx + 32] = mem[_1059 + idx + 164]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_1123) <= _1123:
                                                    _1731 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    _1843 = mem[_1171]
                                                    mem[mem[64] + 36] = mem[_1171]
                                                    idx = 0
                                                    while idx < _1843:
                                                        mem[_1731 + idx + 68] = mem[_1171 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_1843) > _1843:
                                                        mem[_1731 + _1843 + 68] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _1731 + ceil32(_1843) + -mem[64] + 68
                                                mem[_1171 + _1123 + 32] = 0
                                                _1795 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                _1875 = mem[_1171]
                                                mem[mem[64] + 36] = mem[_1171]
                                                idx = 0
                                                while idx < _1875:
                                                    mem[_1795 + idx + 68] = mem[_1171 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_1875) > _1875:
                                                    mem[_1795 + _1875 + 68] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _1795 + ceil32(_1875) + -mem[64] + 68
                                            _923 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_923] = return_data.size
                                            mem[_923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if delegate.return_code:
                                                idx = idx + 1
                                                continue 
                                            if return_data.size < 68:
                                                _998 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_998] = 2
                                                mem[_998 + 32] = 'ER'
                                                _1062 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 2
                                                idx = 0
                                                while idx < 2:
                                                    mem[_1062 + idx + 68] = mem[_998 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_1062 + 70] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _1062 + -mem[64] + 100
                                            _997 = Mask(224, 0, return_data.size), mem[_923 + 32 len 4]
                                            require Mask(224, 0, return_data.size), mem[_923 + 32 len 4] >= 32
                                            _1061 = mem[_923 + 36]
                                            require mem[_923 + 36] <= test266151307()
                                            require _923 + mem[_923 + 36] + 67 < _923 + Mask(224, 0, return_data.size), mem[_923 + 32 len 4] + 36
                                            _1125 = mem[_923 + mem[_923 + 36] + 36]
                                            require mem[_923 + mem[_923 + 36] + 36] <= test266151307()
                                            _1172 = mem[64]
                                            require mem[64] + ceil32(mem[_923 + mem[_923 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_923 + mem[_923 + 36] + 36]) + 32 >= mem[64]
                                            mem[64] = mem[64] + ceil32(mem[_923 + mem[_923 + 36] + 36]) + 32
                                            mem[_1172] = _1125
                                            require _1061 + _1125 + 68 <= _997 + 36
                                            idx = 0
                                            while idx < _1125:
                                                mem[_1172 + idx + 32] = mem[_923 + _1061 + idx + 68]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_1125) <= _1125:
                                                _1733 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = _1125
                                                idx = 0
                                                while idx < _1125:
                                                    mem[_1733 + idx + 68] = mem[_1172 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_1125) > _1125:
                                                    mem[_1733 + _1125 + 68] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _1733 + ceil32(_1125) + -mem[64] + 68
                                            mem[_1172 + _1125 + 32] = 0
                                            _1797 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = _1125
                                            idx = 0
                                            while idx < _1125:
                                                mem[_1797 + idx + 68] = mem[_1172 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_1125) > _1125:
                                                mem[_1797 + _1125 + 68] = 0
                                            revert with memory
                                              from mem[64]
                                               len _1797 + ceil32(_1125) + -mem[64] + 68
                                        if uint8(cd[68]):
                                            if (16 * calldata.size) + 21000 > 50000:
                                                mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _859 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_859] == mem[_859]
                                    else:
                                        if 0xaaaaaf4acd6e97219e35a807aab2c041283df5fe == msg.sender:
                                            idx = 0
                                            while idx < ('cd', 4).length:
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                require idx < ('cd', 36).length
                                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                                                     gas gas_remaining wei
                                                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                if not return_data.size:
                                                    if delegate.return_code:
                                                        idx = idx + 1
                                                        continue 
                                                    if mem[96] < 68:
                                                        _1000 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1000] = 2
                                                        mem[_1000 + 32] = 'ER'
                                                        _1064 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 2
                                                        idx = 0
                                                        while idx < 2:
                                                            mem[_1064 + idx + 68] = mem[_1000 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1064 + 70] = 0
                                                        revert with memory
                                                          from mem[64]
                                                           len _1064 + -mem[64] + 100
                                                    _999 = mem[100]
                                                    require mem[100] >= 32
                                                    _1063 = mem[132]
                                                    require mem[132] <= test266151307()
                                                    require mem[132] + 163 < mem[100] + 132
                                                    _1127 = mem[mem[132] + 132]
                                                    require mem[mem[132] + 132] <= test266151307()
                                                    _1173 = mem[64]
                                                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                    mem[_1173] = mem[mem[132] + 132]
                                                    require _1063 + _1127 + 164 <= _999 + 132
                                                    idx = 0
                                                    while idx < _1127:
                                                        mem[_1173 + idx + 32] = mem[_1063 + idx + 164]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_1127) <= _1127:
                                                        _1735 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        _1845 = mem[_1173]
                                                        mem[mem[64] + 36] = mem[_1173]
                                                        idx = 0
                                                        while idx < _1845:
                                                            mem[_1735 + idx + 68] = mem[_1173 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        if ceil32(_1845) > _1845:
                                                            mem[_1735 + _1845 + 68] = 0
                                                        revert with memory
                                                          from mem[64]
                                                           len _1735 + ceil32(_1845) + -mem[64] + 68
                                                    mem[_1173 + _1127 + 32] = 0
                                                    _1799 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    _1877 = mem[_1173]
                                                    mem[mem[64] + 36] = mem[_1173]
                                                    idx = 0
                                                    while idx < _1877:
                                                        mem[_1799 + idx + 68] = mem[_1173 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_1877) > _1877:
                                                        mem[_1799 + _1877 + 68] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _1799 + ceil32(_1877) + -mem[64] + 68
                                                _924 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_924] = return_data.size
                                                mem[_924 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if delegate.return_code:
                                                    idx = idx + 1
                                                    continue 
                                                if return_data.size < 68:
                                                    _1002 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_1002] = 2
                                                    mem[_1002 + 32] = 'ER'
                                                    _1066 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 2
                                                    idx = 0
                                                    while idx < 2:
                                                        mem[_1066 + idx + 68] = mem[_1002 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_1066 + 70] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _1066 + -mem[64] + 100
                                                _1001 = Mask(224, 0, return_data.size), mem[_924 + 32 len 4]
                                                require Mask(224, 0, return_data.size), mem[_924 + 32 len 4] >= 32
                                                _1065 = mem[_924 + 36]
                                                require mem[_924 + 36] <= test266151307()
                                                require _924 + mem[_924 + 36] + 67 < _924 + Mask(224, 0, return_data.size), mem[_924 + 32 len 4] + 36
                                                _1129 = mem[_924 + mem[_924 + 36] + 36]
                                                require mem[_924 + mem[_924 + 36] + 36] <= test266151307()
                                                _1174 = mem[64]
                                                require mem[64] + ceil32(mem[_924 + mem[_924 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_924 + mem[_924 + 36] + 36]) + 32 >= mem[64]
                                                mem[64] = mem[64] + ceil32(mem[_924 + mem[_924 + 36] + 36]) + 32
                                                mem[_1174] = _1129
                                                require _1065 + _1129 + 68 <= _1001 + 36
                                                idx = 0
                                                while idx < _1129:
                                                    mem[_1174 + idx + 32] = mem[_924 + _1065 + idx + 68]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_1129) <= _1129:
                                                    _1737 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = _1129
                                                    idx = 0
                                                    while idx < _1129:
                                                        mem[_1737 + idx + 68] = mem[_1174 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_1129) > _1129:
                                                        mem[_1737 + _1129 + 68] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _1737 + ceil32(_1129) + -mem[64] + 68
                                                mem[_1174 + _1129 + 32] = 0
                                                _1801 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = _1129
                                                idx = 0
                                                while idx < _1129:
                                                    mem[_1801 + idx + 68] = mem[_1174 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_1129) > _1129:
                                                    mem[_1801 + _1129 + 68] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _1801 + ceil32(_1129) + -mem[64] + 68
                                            if uint8(cd[68]):
                                                if (16 * calldata.size) + 21000 > 50000:
                                                    mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _860 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_860] == mem[_860]
                                        else:
                                            if 0xaaaaa6ff8986a294e5a817187921ae47bddfbff4 == msg.sender:
                                                idx = 0
                                                while idx < ('cd', 4).length:
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    require idx < ('cd', 36).length
                                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                    _893 = mem[64]
                                                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                    delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _893 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                                                    if not return_data.size:
                                                        if delegate.return_code:
                                                            idx = idx + 1
                                                            continue 
                                                        if mem[96] < 68:
                                                            _1004 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1004] = 2
                                                            mem[_1004 + 32] = 'ER'
                                                            _1068 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 2
                                                            idx = 0
                                                            while idx < 2:
                                                                mem[_1068 + idx + 68] = mem[_1004 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1068 + 70] = 0
                                                            revert with memory
                                                              from mem[64]
                                                               len _1068 + -mem[64] + 100
                                                        _1003 = mem[100]
                                                        require mem[100] >= 32
                                                        _1067 = mem[132]
                                                        require mem[132] <= test266151307()
                                                        require mem[132] + 163 < mem[100] + 132
                                                        _1131 = mem[mem[132] + 132]
                                                        require mem[mem[132] + 132] <= test266151307()
                                                        _1175 = mem[64]
                                                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                        mem[_1175] = mem[mem[132] + 132]
                                                        require _1067 + _1131 + 164 <= _1003 + 132
                                                        idx = 0
                                                        while idx < _1131:
                                                            mem[_1175 + idx + 32] = mem[_1067 + idx + 164]
                                                            idx = idx + 32
                                                            continue 
                                                        if ceil32(_1131) <= _1131:
                                                            _1739 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            _1847 = mem[_1175]
                                                            mem[mem[64] + 36] = mem[_1175]
                                                            idx = 0
                                                            while idx < _1847:
                                                                mem[_1739 + idx + 68] = mem[_1175 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            if ceil32(_1847) > _1847:
                                                                mem[_1739 + _1847 + 68] = 0
                                                            revert with memory
                                                              from mem[64]
                                                               len _1739 + ceil32(_1847) + -mem[64] + 68
                                                        mem[_1175 + _1131 + 32] = 0
                                                        _1803 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        _1879 = mem[_1175]
                                                        mem[mem[64] + 36] = mem[_1175]
                                                        idx = 0
                                                        while idx < _1879:
                                                            mem[_1803 + idx + 68] = mem[_1175 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        if ceil32(_1879) > _1879:
                                                            mem[_1803 + _1879 + 68] = 0
                                                        revert with memory
                                                          from mem[64]
                                                           len _1803 + ceil32(_1879) + -mem[64] + 68
                                                    _925 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_925] = return_data.size
                                                    mem[_925 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if delegate.return_code:
                                                        idx = idx + 1
                                                        continue 
                                                    if return_data.size < 68:
                                                        _1006 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_1006] = 2
                                                        mem[_1006 + 32] = 'ER'
                                                        _1070 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 2
                                                        idx = 0
                                                        while idx < 2:
                                                            mem[_1070 + idx + 68] = mem[_1006 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_1070 + 70] = 0
                                                        revert with memory
                                                          from mem[64]
                                                           len _1070 + -mem[64] + 100
                                                    _1005 = Mask(224, 0, return_data.size), mem[_925 + 32 len 4]
                                                    require Mask(224, 0, return_data.size), mem[_925 + 32 len 4] >= 32
                                                    _1069 = mem[_925 + 36]
                                                    require mem[_925 + 36] <= test266151307()
                                                    require _925 + mem[_925 + 36] + 67 < _925 + Mask(224, 0, return_data.size), mem[_925 + 32 len 4] + 36
                                                    _1133 = mem[_925 + mem[_925 + 36] + 36]
                                                    require mem[_925 + mem[_925 + 36] + 36] <= test266151307()
                                                    _1176 = mem[64]
                                                    require mem[64] + ceil32(mem[_925 + mem[_925 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_925 + mem[_925 + 36] + 36]) + 32 >= mem[64]
                                                    mem[64] = mem[64] + ceil32(mem[_925 + mem[_925 + 36] + 36]) + 32
                                                    mem[_1176] = _1133
                                                    require _1069 + _1133 + 68 <= _1005 + 36
                                                    idx = 0
                                                    while idx < _1133:
                                                        mem[_1176 + idx + 32] = mem[_925 + _1069 + idx + 68]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_1133) <= _1133:
                                                        _1741 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = _1133
                                                        idx = 0
                                                        while idx < _1133:
                                                            mem[_1741 + idx + 68] = mem[_1176 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        if ceil32(_1133) > _1133:
                                                            mem[_1741 + _1133 + 68] = 0
                                                        revert with memory
                                                          from mem[64]
                                                           len _1741 + ceil32(_1133) + -mem[64] + 68
                                                    mem[_1176 + _1133 + 32] = 0
                                                    _1805 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = _1133
                                                    idx = 0
                                                    while idx < _1133:
                                                        mem[_1805 + idx + 68] = mem[_1176 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_1133) > _1133:
                                                        mem[_1805 + _1133 + 68] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _1805 + ceil32(_1133) + -mem[64] + 68
                                                if uint8(cd[68]):
                                                    if (16 * calldata.size) + 21000 > 50000:
                                                        mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _861 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_861] == mem[_861]
                                            else:
                                                if 0xaaaaa328bd652d0cb9e7a112476fc1aff458a9c4 == msg.sender:
                                                    idx = 0
                                                    while idx < ('cd', 4).length:
                                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                        require idx < ('cd', 36).length
                                                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                        mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                        delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                                                             gas gas_remaining wei
                                                            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                        if not return_data.size:
                                                            if delegate.return_code:
                                                                idx = idx + 1
                                                                continue 
                                                            if mem[96] < 68:
                                                                _1008 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1008] = 2
                                                                mem[_1008 + 32] = 'ER'
                                                                _1072 = mem[64]
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 2
                                                                idx = 0
                                                                while idx < 2:
                                                                    mem[_1072 + idx + 68] = mem[_1008 + idx + 32]
                                                                    idx = idx + 32
                                                                    continue 
                                                                mem[_1072 + 70] = 0
                                                                revert with memory
                                                                  from mem[64]
                                                                   len _1072 + -mem[64] + 100
                                                            _1007 = mem[100]
                                                            require mem[100] >= 32
                                                            _1071 = mem[132]
                                                            require mem[132] <= test266151307()
                                                            require mem[132] + 163 < mem[100] + 132
                                                            _1135 = mem[mem[132] + 132]
                                                            require mem[mem[132] + 132] <= test266151307()
                                                            _1177 = mem[64]
                                                            require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                            mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                            mem[_1177] = mem[mem[132] + 132]
                                                            require _1071 + _1135 + 164 <= _1007 + 132
                                                            idx = 0
                                                            while idx < _1135:
                                                                mem[_1177 + idx + 32] = mem[_1071 + idx + 164]
                                                                idx = idx + 32
                                                                continue 
                                                            if ceil32(_1135) <= _1135:
                                                                _1743 = mem[64]
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                _1849 = mem[_1177]
                                                                mem[mem[64] + 36] = mem[_1177]
                                                                idx = 0
                                                                while idx < _1849:
                                                                    mem[_1743 + idx + 68] = mem[_1177 + idx + 32]
                                                                    idx = idx + 32
                                                                    continue 
                                                                if ceil32(_1849) > _1849:
                                                                    mem[_1743 + _1849 + 68] = 0
                                                                revert with memory
                                                                  from mem[64]
                                                                   len _1743 + ceil32(_1849) + -mem[64] + 68
                                                            mem[_1177 + _1135 + 32] = 0
                                                            _1807 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            _1881 = mem[_1177]
                                                            mem[mem[64] + 36] = mem[_1177]
                                                            idx = 0
                                                            while idx < _1881:
                                                                mem[_1807 + idx + 68] = mem[_1177 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            if ceil32(_1881) > _1881:
                                                                mem[_1807 + _1881 + 68] = 0
                                                            revert with memory
                                                              from mem[64]
                                                               len _1807 + ceil32(_1881) + -mem[64] + 68
                                                        _926 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_926] = return_data.size
                                                        mem[_926 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if delegate.return_code:
                                                            idx = idx + 1
                                                            continue 
                                                        if return_data.size < 68:
                                                            _1010 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1010] = 2
                                                            mem[_1010 + 32] = 'ER'
                                                            _1074 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 2
                                                            idx = 0
                                                            while idx < 2:
                                                                mem[_1074 + idx + 68] = mem[_1010 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            mem[_1074 + 70] = 0
                                                            revert with memory
                                                              from mem[64]
                                                               len _1074 + -mem[64] + 100
                                                        _1009 = Mask(224, 0, return_data.size), mem[_926 + 32 len 4]
                                                        require Mask(224, 0, return_data.size), mem[_926 + 32 len 4] >= 32
                                                        _1073 = mem[_926 + 36]
                                                        require mem[_926 + 36] <= test266151307()
                                                        require _926 + mem[_926 + 36] + 67 < _926 + Mask(224, 0, return_data.size), mem[_926 + 32 len 4] + 36
                                                        _1137 = mem[_926 + mem[_926 + 36] + 36]
                                                        require mem[_926 + mem[_926 + 36] + 36] <= test266151307()
                                                        _1178 = mem[64]
                                                        require mem[64] + ceil32(mem[_926 + mem[_926 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_926 + mem[_926 + 36] + 36]) + 32 >= mem[64]
                                                        mem[64] = mem[64] + ceil32(mem[_926 + mem[_926 + 36] + 36]) + 32
                                                        mem[_1178] = _1137
                                                        require _1073 + _1137 + 68 <= _1009 + 36
                                                        idx = 0
                                                        while idx < _1137:
                                                            mem[_1178 + idx + 32] = mem[_926 + _1073 + idx + 68]
                                                            idx = idx + 32
                                                            continue 
                                                        if ceil32(_1137) <= _1137:
                                                            _1745 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = _1137
                                                            idx = 0
                                                            while idx < _1137:
                                                                mem[_1745 + idx + 68] = mem[_1178 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            if ceil32(_1137) > _1137:
                                                                mem[_1745 + _1137 + 68] = 0
                                                            revert with memory
                                                              from mem[64]
                                                               len _1745 + ceil32(_1137) + -mem[64] + 68
                                                        mem[_1178 + _1137 + 32] = 0
                                                        _1809 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = _1137
                                                        idx = 0
                                                        while idx < _1137:
                                                            mem[_1809 + idx + 68] = mem[_1178 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        if ceil32(_1137) > _1137:
                                                            mem[_1809 + _1137 + 68] = 0
                                                        revert with memory
                                                          from mem[64]
                                                           len _1809 + ceil32(_1137) + -mem[64] + 68
                                                    if uint8(cd[68]):
                                                        if (16 * calldata.size) + 21000 > 50000:
                                                            mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                            require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                            call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _862 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_862] == mem[_862]
                                                else:
                                                    if 0xaaaaa2789cdc3c97c1dce79ac1a1a163f014d882 == msg.sender:
                                                        idx = 0
                                                        while idx < ('cd', 4).length:
                                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                            require idx < ('cd', 36).length
                                                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                            delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                                                                 gas gas_remaining wei
                                                                args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                            if not return_data.size:
                                                                if delegate.return_code:
                                                                    idx = idx + 1
                                                                    continue 
                                                                if mem[96] < 68:
                                                                    _1012 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1012] = 2
                                                                    mem[_1012 + 32] = 'ER'
                                                                    _1076 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 2
                                                                    idx = 0
                                                                    while idx < 2:
                                                                        mem[_1076 + idx + 68] = mem[_1012 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    mem[_1076 + 70] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1076 + -mem[64] + 100
                                                                _1011 = mem[100]
                                                                require mem[100] >= 32
                                                                _1075 = mem[132]
                                                                require mem[132] <= test266151307()
                                                                require mem[132] + 163 < mem[100] + 132
                                                                _1139 = mem[mem[132] + 132]
                                                                require mem[mem[132] + 132] <= test266151307()
                                                                _1179 = mem[64]
                                                                require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                                mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                                mem[_1179] = mem[mem[132] + 132]
                                                                require _1075 + _1139 + 164 <= _1011 + 132
                                                                idx = 0
                                                                while idx < _1139:
                                                                    mem[_1179 + idx + 32] = mem[_1075 + idx + 164]
                                                                    idx = idx + 32
                                                                    continue 
                                                                if ceil32(_1139) <= _1139:
                                                                    _1747 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    _1851 = mem[_1179]
                                                                    mem[mem[64] + 36] = mem[_1179]
                                                                    idx = 0
                                                                    while idx < _1851:
                                                                        mem[_1747 + idx + 68] = mem[_1179 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1851) > _1851:
                                                                        mem[_1747 + _1851 + 68] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1747 + ceil32(_1851) + -mem[64] + 68
                                                                mem[_1179 + _1139 + 32] = 0
                                                                _1811 = mem[64]
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                _1883 = mem[_1179]
                                                                mem[mem[64] + 36] = mem[_1179]
                                                                idx = 0
                                                                while idx < _1883:
                                                                    mem[_1811 + idx + 68] = mem[_1179 + idx + 32]
                                                                    idx = idx + 32
                                                                    continue 
                                                                if ceil32(_1883) > _1883:
                                                                    mem[_1811 + _1883 + 68] = 0
                                                                revert with memory
                                                                  from mem[64]
                                                                   len _1811 + ceil32(_1883) + -mem[64] + 68
                                                            _927 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_927] = return_data.size
                                                            mem[_927 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if delegate.return_code:
                                                                idx = idx + 1
                                                                continue 
                                                            if return_data.size < 68:
                                                                _1014 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1014] = 2
                                                                mem[_1014 + 32] = 'ER'
                                                                _1078 = mem[64]
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 2
                                                                idx = 0
                                                                while idx < 2:
                                                                    mem[_1078 + idx + 68] = mem[_1014 + idx + 32]
                                                                    idx = idx + 32
                                                                    continue 
                                                                mem[_1078 + 70] = 0
                                                                revert with memory
                                                                  from mem[64]
                                                                   len _1078 + -mem[64] + 100
                                                            _1013 = Mask(224, 0, return_data.size), mem[_927 + 32 len 4]
                                                            require Mask(224, 0, return_data.size), mem[_927 + 32 len 4] >= 32
                                                            _1077 = mem[_927 + 36]
                                                            require mem[_927 + 36] <= test266151307()
                                                            require _927 + mem[_927 + 36] + 67 < _927 + Mask(224, 0, return_data.size), mem[_927 + 32 len 4] + 36
                                                            _1141 = mem[_927 + mem[_927 + 36] + 36]
                                                            require mem[_927 + mem[_927 + 36] + 36] <= test266151307()
                                                            _1180 = mem[64]
                                                            require mem[64] + ceil32(mem[_927 + mem[_927 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_927 + mem[_927 + 36] + 36]) + 32 >= mem[64]
                                                            mem[64] = mem[64] + ceil32(mem[_927 + mem[_927 + 36] + 36]) + 32
                                                            mem[_1180] = _1141
                                                            require _1077 + _1141 + 68 <= _1013 + 36
                                                            idx = 0
                                                            while idx < _1141:
                                                                mem[_1180 + idx + 32] = mem[_927 + _1077 + idx + 68]
                                                                idx = idx + 32
                                                                continue 
                                                            if ceil32(_1141) <= _1141:
                                                                _1749 = mem[64]
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = _1141
                                                                idx = 0
                                                                while idx < _1141:
                                                                    mem[_1749 + idx + 68] = mem[_1180 + idx + 32]
                                                                    idx = idx + 32
                                                                    continue 
                                                                if ceil32(_1141) > _1141:
                                                                    mem[_1749 + _1141 + 68] = 0
                                                                revert with memory
                                                                  from mem[64]
                                                                   len _1749 + ceil32(_1141) + -mem[64] + 68
                                                            mem[_1180 + _1141 + 32] = 0
                                                            _1813 = mem[64]
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = _1141
                                                            idx = 0
                                                            while idx < _1141:
                                                                mem[_1813 + idx + 68] = mem[_1180 + idx + 32]
                                                                idx = idx + 32
                                                                continue 
                                                            if ceil32(_1141) > _1141:
                                                                mem[_1813 + _1141 + 68] = 0
                                                            revert with memory
                                                              from mem[64]
                                                               len _1813 + ceil32(_1141) + -mem[64] + 68
                                                        if uint8(cd[68]):
                                                            if (16 * calldata.size) + 21000 > 50000:
                                                                mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _863 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_863] == mem[_863]
                                                    else:
                                                        if 0xaaaaa3a7370d91a983067503573a55a2bc3ec1ca == msg.sender:
                                                            idx = 0
                                                            while idx < ('cd', 4).length:
                                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                                require idx < ('cd', 36).length
                                                                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                                _896 = mem[64]
                                                                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                                delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4 len _896 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                                                                if not return_data.size:
                                                                    if delegate.return_code:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    if mem[96] < 68:
                                                                        _1016 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_1016] = 2
                                                                        mem[_1016 + 32] = 'ER'
                                                                        _1080 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        mem[mem[64] + 36] = 2
                                                                        idx = 0
                                                                        while idx < 2:
                                                                            mem[_1080 + idx + 68] = mem[_1016 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        mem[_1080 + 70] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1080 + -mem[64] + 100
                                                                    _1015 = mem[100]
                                                                    require mem[100] >= 32
                                                                    _1079 = mem[132]
                                                                    require mem[132] <= test266151307()
                                                                    require mem[132] + 163 < mem[100] + 132
                                                                    _1143 = mem[mem[132] + 132]
                                                                    require mem[mem[132] + 132] <= test266151307()
                                                                    _1181 = mem[64]
                                                                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                                    mem[_1181] = mem[mem[132] + 132]
                                                                    require _1079 + _1143 + 164 <= _1015 + 132
                                                                    idx = 0
                                                                    while idx < _1143:
                                                                        mem[_1181 + idx + 32] = mem[_1079 + idx + 164]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1143) <= _1143:
                                                                        _1751 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        _1853 = mem[_1181]
                                                                        mem[mem[64] + 36] = mem[_1181]
                                                                        idx = 0
                                                                        while idx < _1853:
                                                                            mem[_1751 + idx + 68] = mem[_1181 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1853) > _1853:
                                                                            mem[_1751 + _1853 + 68] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1751 + ceil32(_1853) + -mem[64] + 68
                                                                    mem[_1181 + _1143 + 32] = 0
                                                                    _1815 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    _1885 = mem[_1181]
                                                                    mem[mem[64] + 36] = mem[_1181]
                                                                    idx = 0
                                                                    while idx < _1885:
                                                                        mem[_1815 + idx + 68] = mem[_1181 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1885) > _1885:
                                                                        mem[_1815 + _1885 + 68] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1815 + ceil32(_1885) + -mem[64] + 68
                                                                _928 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                                mem[_928] = return_data.size
                                                                mem[_928 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if delegate.return_code:
                                                                    idx = idx + 1
                                                                    continue 
                                                                if return_data.size < 68:
                                                                    _1018 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1018] = 2
                                                                    mem[_1018 + 32] = 'ER'
                                                                    _1082 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 2
                                                                    idx = 0
                                                                    while idx < 2:
                                                                        mem[_1082 + idx + 68] = mem[_1018 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    mem[_1082 + 70] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1082 + -mem[64] + 100
                                                                _1017 = Mask(224, 0, return_data.size), mem[_928 + 32 len 4]
                                                                require Mask(224, 0, return_data.size), mem[_928 + 32 len 4] >= 32
                                                                _1081 = mem[_928 + 36]
                                                                require mem[_928 + 36] <= test266151307()
                                                                require _928 + mem[_928 + 36] + 67 < _928 + Mask(224, 0, return_data.size), mem[_928 + 32 len 4] + 36
                                                                _1145 = mem[_928 + mem[_928 + 36] + 36]
                                                                require mem[_928 + mem[_928 + 36] + 36] <= test266151307()
                                                                _1182 = mem[64]
                                                                require mem[64] + ceil32(mem[_928 + mem[_928 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_928 + mem[_928 + 36] + 36]) + 32 >= mem[64]
                                                                mem[64] = mem[64] + ceil32(mem[_928 + mem[_928 + 36] + 36]) + 32
                                                                mem[_1182] = _1145
                                                                require _1081 + _1145 + 68 <= _1017 + 36
                                                                idx = 0
                                                                while idx < _1145:
                                                                    mem[_1182 + idx + 32] = mem[_928 + _1081 + idx + 68]
                                                                    idx = idx + 32
                                                                    continue 
                                                                if ceil32(_1145) <= _1145:
                                                                    _1753 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = _1145
                                                                    idx = 0
                                                                    while idx < _1145:
                                                                        mem[_1753 + idx + 68] = mem[_1182 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1145) > _1145:
                                                                        mem[_1753 + _1145 + 68] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1753 + ceil32(_1145) + -mem[64] + 68
                                                                mem[_1182 + _1145 + 32] = 0
                                                                _1817 = mem[64]
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = _1145
                                                                idx = 0
                                                                while idx < _1145:
                                                                    mem[_1817 + idx + 68] = mem[_1182 + idx + 32]
                                                                    idx = idx + 32
                                                                    continue 
                                                                if ceil32(_1145) > _1145:
                                                                    mem[_1817 + _1145 + 68] = 0
                                                                revert with memory
                                                                  from mem[64]
                                                                   len _1817 + ceil32(_1145) + -mem[64] + 68
                                                            if uint8(cd[68]):
                                                                if (16 * calldata.size) + 21000 > 50000:
                                                                    mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                                    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                                    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _864 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_864] == mem[_864]
                                                        else:
                                                            if 0xaaaaab018316f37951e2894585c160514f495582 == msg.sender:
                                                                idx = 0
                                                                while idx < ('cd', 4).length:
                                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                                    require idx < ('cd', 36).length
                                                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                                    delegate address(cd[((32 * idx) + cd[4] + 36)]) with:
                                                                         gas gas_remaining wei
                                                                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                                    if not return_data.size:
                                                                        if delegate.return_code:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        if mem[96] < 68:
                                                                            _1020 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_1020] = 2
                                                                            mem[_1020 + 32] = 'ER'
                                                                            _1084 = mem[64]
                                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 32
                                                                            mem[mem[64] + 36] = 2
                                                                            idx = 0
                                                                            while idx < 2:
                                                                                mem[_1084 + idx + 68] = mem[_1020 + idx + 32]
                                                                                idx = idx + 32
                                                                                continue 
                                                                            mem[_1084 + 70] = 0
                                                                            revert with memory
                                                                              from mem[64]
                                                                               len _1084 + -mem[64] + 100
                                                                        _1019 = mem[100]
                                                                        require mem[100] >= 32
                                                                        _1083 = mem[132]
                                                                        require mem[132] <= test266151307()
                                                                        require mem[132] + 163 < mem[100] + 132
                                                                        _1147 = mem[mem[132] + 132]
                                                                        require mem[mem[132] + 132] <= test266151307()
                                                                        _1183 = mem[64]
                                                                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                                        mem[_1183] = mem[mem[132] + 132]
                                                                        require _1083 + _1147 + 164 <= _1019 + 132
                                                                        idx = 0
                                                                        while idx < _1147:
                                                                            mem[_1183 + idx + 32] = mem[_1083 + idx + 164]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1147) <= _1147:
                                                                            _1755 = mem[64]
                                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 32
                                                                            _1855 = mem[_1183]
                                                                            mem[mem[64] + 36] = mem[_1183]
                                                                            idx = 0
                                                                            while idx < _1855:
                                                                                mem[_1755 + idx + 68] = mem[_1183 + idx + 32]
                                                                                idx = idx + 32
                                                                                continue 
                                                                            if ceil32(_1855) > _1855:
                                                                                mem[_1755 + _1855 + 68] = 0
                                                                            revert with memory
                                                                              from mem[64]
                                                                               len _1755 + ceil32(_1855) + -mem[64] + 68
                                                                        mem[_1183 + _1147 + 32] = 0
                                                                        _1819 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        _1887 = mem[_1183]
                                                                        mem[mem[64] + 36] = mem[_1183]
                                                                        idx = 0
                                                                        while idx < _1887:
                                                                            mem[_1819 + idx + 68] = mem[_1183 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1887) > _1887:
                                                                            mem[_1819 + _1887 + 68] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1819 + ceil32(_1887) + -mem[64] + 68
                                                                    _929 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                                    mem[_929] = return_data.size
                                                                    mem[_929 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if delegate.return_code:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    if return_data.size < 68:
                                                                        _1022 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_1022] = 2
                                                                        mem[_1022 + 32] = 'ER'
                                                                        _1086 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        mem[mem[64] + 36] = 2
                                                                        idx = 0
                                                                        while idx < 2:
                                                                            mem[_1086 + idx + 68] = mem[_1022 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        mem[_1086 + 70] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1086 + -mem[64] + 100
                                                                    _1021 = Mask(224, 0, return_data.size), mem[_929 + 32 len 4]
                                                                    require Mask(224, 0, return_data.size), mem[_929 + 32 len 4] >= 32
                                                                    _1085 = mem[_929 + 36]
                                                                    require mem[_929 + 36] <= test266151307()
                                                                    require _929 + mem[_929 + 36] + 67 < _929 + Mask(224, 0, return_data.size), mem[_929 + 32 len 4] + 36
                                                                    _1149 = mem[_929 + mem[_929 + 36] + 36]
                                                                    require mem[_929 + mem[_929 + 36] + 36] <= test266151307()
                                                                    _1184 = mem[64]
                                                                    require mem[64] + ceil32(mem[_929 + mem[_929 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_929 + mem[_929 + 36] + 36]) + 32 >= mem[64]
                                                                    mem[64] = mem[64] + ceil32(mem[_929 + mem[_929 + 36] + 36]) + 32
                                                                    mem[_1184] = _1149
                                                                    require _1085 + _1149 + 68 <= _1021 + 36
                                                                    idx = 0
                                                                    while idx < _1149:
                                                                        mem[_1184 + idx + 32] = mem[_929 + _1085 + idx + 68]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1149) <= _1149:
                                                                        _1757 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        mem[mem[64] + 36] = _1149
                                                                        idx = 0
                                                                        while idx < _1149:
                                                                            mem[_1757 + idx + 68] = mem[_1184 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1149) > _1149:
                                                                            mem[_1757 + _1149 + 68] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1757 + ceil32(_1149) + -mem[64] + 68
                                                                    mem[_1184 + _1149 + 32] = 0
                                                                    _1821 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = _1149
                                                                    idx = 0
                                                                    while idx < _1149:
                                                                        mem[_1821 + idx + 68] = mem[_1184 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1149) > _1149:
                                                                        mem[_1821 + _1149 + 68] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1821 + ceil32(_1149) + -mem[64] + 68
                                                                if uint8(cd[68]):
                                                                    if (16 * calldata.size) + 21000 > 50000:
                                                                        mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _865 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_865] == mem[_865]
                                                            else:
                                                                if msg.sender != 0xaaaaad2b13cf538d5295c53c65acb7185036d0c8:
                                                                    revert with 0, 'NS'
                                                                idx = 0
                                                                while idx < ('cd', 4).length:
                                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                                    require idx < ('cd', 36).length
                                                                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                                                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                                                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                                                    _898 = mem[64]
                                                                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                                                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = 0
                                                                    delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                                         gas gas_remaining wei
                                                                        args mem[mem[64] + 4 len _898 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                                                                    if not return_data.size:
                                                                        if delegate.return_code:
                                                                            idx = idx + 1
                                                                            continue 
                                                                        if mem[96] < 68:
                                                                            _1024 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_1024] = 2
                                                                            mem[_1024 + 32] = 'ER'
                                                                            _1088 = mem[64]
                                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 32
                                                                            mem[mem[64] + 36] = 2
                                                                            idx = 0
                                                                            while idx < 2:
                                                                                mem[_1088 + idx + 68] = mem[_1024 + idx + 32]
                                                                                idx = idx + 32
                                                                                continue 
                                                                            mem[_1088 + 70] = 0
                                                                            revert with memory
                                                                              from mem[64]
                                                                               len _1088 + -mem[64] + 100
                                                                        _1023 = mem[100]
                                                                        require mem[100] >= 32
                                                                        _1087 = mem[132]
                                                                        require mem[132] <= test266151307()
                                                                        require mem[132] + 163 < mem[100] + 132
                                                                        _1151 = mem[mem[132] + 132]
                                                                        require mem[mem[132] + 132] <= test266151307()
                                                                        _1185 = mem[64]
                                                                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307() and mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64]
                                                                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                                                                        mem[_1185] = mem[mem[132] + 132]
                                                                        require _1087 + _1151 + 164 <= _1023 + 132
                                                                        idx = 0
                                                                        while idx < _1151:
                                                                            mem[_1185 + idx + 32] = mem[_1087 + idx + 164]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1151) <= _1151:
                                                                            _1759 = mem[64]
                                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 32
                                                                            _1857 = mem[_1185]
                                                                            mem[mem[64] + 36] = mem[_1185]
                                                                            idx = 0
                                                                            while idx < _1857:
                                                                                mem[_1759 + idx + 68] = mem[_1185 + idx + 32]
                                                                                idx = idx + 32
                                                                                continue 
                                                                            if ceil32(_1857) > _1857:
                                                                                mem[_1759 + _1857 + 68] = 0
                                                                            revert with memory
                                                                              from mem[64]
                                                                               len _1759 + ceil32(_1857) + -mem[64] + 68
                                                                        mem[_1185 + _1151 + 32] = 0
                                                                        _1823 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        _1889 = mem[_1185]
                                                                        mem[mem[64] + 36] = mem[_1185]
                                                                        idx = 0
                                                                        while idx < _1889:
                                                                            mem[_1823 + idx + 68] = mem[_1185 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1889) > _1889:
                                                                            mem[_1823 + _1889 + 68] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1823 + ceil32(_1889) + -mem[64] + 68
                                                                    _930 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                                    mem[_930] = return_data.size
                                                                    mem[_930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if delegate.return_code:
                                                                        idx = idx + 1
                                                                        continue 
                                                                    if return_data.size < 68:
                                                                        _1026 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_1026] = 2
                                                                        mem[_1026 + 32] = 'ER'
                                                                        _1090 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        mem[mem[64] + 36] = 2
                                                                        idx = 0
                                                                        while idx < 2:
                                                                            mem[_1090 + idx + 68] = mem[_1026 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        mem[_1090 + 70] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1090 + -mem[64] + 100
                                                                    _1025 = Mask(224, 0, return_data.size), mem[_930 + 32 len 4]
                                                                    require Mask(224, 0, return_data.size), mem[_930 + 32 len 4] >= 32
                                                                    _1089 = mem[_930 + 36]
                                                                    require mem[_930 + 36] <= test266151307()
                                                                    require _930 + mem[_930 + 36] + 67 < _930 + Mask(224, 0, return_data.size), mem[_930 + 32 len 4] + 36
                                                                    _1153 = mem[_930 + mem[_930 + 36] + 36]
                                                                    require mem[_930 + mem[_930 + 36] + 36] <= test266151307()
                                                                    _1186 = mem[64]
                                                                    require mem[64] + ceil32(mem[_930 + mem[_930 + 36] + 36]) + 32 <= test266151307() and mem[64] + ceil32(mem[_930 + mem[_930 + 36] + 36]) + 32 >= mem[64]
                                                                    mem[64] = mem[64] + ceil32(mem[_930 + mem[_930 + 36] + 36]) + 32
                                                                    mem[_1186] = _1153
                                                                    require _1089 + _1153 + 68 <= _1025 + 36
                                                                    idx = 0
                                                                    while idx < _1153:
                                                                        mem[_1186 + idx + 32] = mem[_930 + _1089 + idx + 68]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1153) <= _1153:
                                                                        _1761 = mem[64]
                                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 32
                                                                        mem[mem[64] + 36] = _1153
                                                                        idx = 0
                                                                        while idx < _1153:
                                                                            mem[_1761 + idx + 68] = mem[_1186 + idx + 32]
                                                                            idx = idx + 32
                                                                            continue 
                                                                        if ceil32(_1153) > _1153:
                                                                            mem[_1761 + _1153 + 68] = 0
                                                                        revert with memory
                                                                          from mem[64]
                                                                           len _1761 + ceil32(_1153) + -mem[64] + 68
                                                                    mem[_1186 + _1153 + 32] = 0
                                                                    _1825 = mem[64]
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = _1153
                                                                    idx = 0
                                                                    while idx < _1153:
                                                                        mem[_1825 + idx + 68] = mem[_1186 + idx + 32]
                                                                        idx = idx + 32
                                                                        continue 
                                                                    if ceil32(_1153) > _1153:
                                                                        mem[_1825 + _1153 + 68] = 0
                                                                    revert with memory
                                                                      from mem[64]
                                                                       len _1825 + ceil32(_1153) + -mem[64] + 68
                                                                if uint8(cd[68]):
                                                                    if (16 * calldata.size) + 21000 > 50000:
                                                                        mem[mem[64] + 4] = (16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255
                                                                        require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                                                                        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args ((16 * calldata.size) + 35154 / 41947 * uint8(cd[68]) / 255)
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _866 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_866] == mem[_866]
}



}
