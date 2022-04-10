contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == adminAddress
    if not arg1:
        revert with 0, 'new admin is the zero address'
    if ext_code.size(arg1) > 0:
        revert with 0, 'new admin is a contract'
    stor0[stor1] = 0
    adminAddress = arg1
    stor0[address(arg1)] = 1
    return 1
}

function sub_c0ce282a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == adminAddress
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            revert with 0, 'callable cannot be a contract'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c6520746f6b656e20616d6f756e74,
                    mem[235 len 25]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    require ext_call.success
    return 1
}

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == adminAddress
    if not arg2:
        revert with 0, 'recipient cannot be 0 address'
    if not stor0[address(arg2)]:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0xfe726563697069656e74206d75737420626520612063616c6c61626c652061646472657373206f72207468652061646d69,
                        mem[213 len 15]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c652065746820616d6f756e74,
                    mem[233 len 27]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_22466fee(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == bool(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (160 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length <= test266151307()
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        s = 10000
        s = cd[4]
        while idx < ('cd', 68).length:
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            require idx < ('cd', 68).length
            if not uint16(cd[((160 * idx) + cd[68] + 100)]):
                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                _551 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                mem[_551] = cd[((160 * idx) + cd[68] + 36)]
                require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                mem[_551 + 32] = cd[((160 * idx) + cd[68] + 68)]
                require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                mem[_551 + 64] = cd[((160 * idx) + cd[68] + 100)]
                require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[_551 + 96] = cd[((160 * idx) + cd[68] + 132)]
                require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[_551 + 128] = cd[((160 * idx) + cd[68] + 164)]
                require not uint16(cd[((160 * idx) + cd[68] + 100)])
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                     gas gas_remaining wei
                    args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _772 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _779 = mem[_772]
                require mem[_772] == mem[_772]
                require mem[_772 + 32] == bool(mem[_772 + 32])
                require idx < mem[96]
                _870 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_772 + 32])
                mem[_870] = _779
            else:
                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 6:
                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                    call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 68).length
                    require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                    _557 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                    mem[_557] = cd[((160 * idx) + cd[68] + 36)]
                    require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                    mem[_557 + 32] = cd[((160 * idx) + cd[68] + 68)]
                    require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                    mem[_557 + 64] = cd[((160 * idx) + cd[68] + 100)]
                    require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                    mem[_557 + 96] = cd[((160 * idx) + cd[68] + 132)]
                    require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                    mem[_557 + 128] = cd[((160 * idx) + cd[68] + 164)]
                    require not uint16(cd[((160 * idx) + cd[68] + 100)])
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                         gas gas_remaining wei
                        args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _784 = mem[_775]
                    require mem[_775] == mem[_775]
                    require mem[_775 + 32] == bool(mem[_775 + 32])
                    require idx < mem[96]
                    _879 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_775 + 32])
                    mem[_879] = _784
                else:
                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 17:
                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                        call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 68).length
                        require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                        _562 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                        mem[_562] = cd[((160 * idx) + cd[68] + 36)]
                        require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                        mem[_562 + 32] = cd[((160 * idx) + cd[68] + 68)]
                        require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                        mem[_562 + 64] = cd[((160 * idx) + cd[68] + 100)]
                        require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                        mem[_562 + 96] = cd[((160 * idx) + cd[68] + 132)]
                        require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                        mem[_562 + 128] = cd[((160 * idx) + cd[68] + 164)]
                        require not uint16(cd[((160 * idx) + cd[68] + 100)])
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                             gas gas_remaining wei
                            args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _777 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _788 = mem[_777]
                        require mem[_777] == mem[_777]
                        require mem[_777 + 32] == bool(mem[_777 + 32])
                        require idx < mem[96]
                        _890 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_777 + 32])
                        mem[_890] = _788
                    else:
                        if uint16(cd[((160 * idx) + cd[68] + 100)]) == 18:
                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                            call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 68).length
                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                            _567 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                            mem[_567] = cd[((160 * idx) + cd[68] + 36)]
                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                            mem[_567 + 32] = cd[((160 * idx) + cd[68] + 68)]
                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                            mem[_567 + 64] = cd[((160 * idx) + cd[68] + 100)]
                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                            mem[_567 + 96] = cd[((160 * idx) + cd[68] + 132)]
                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                            mem[_567 + 128] = cd[((160 * idx) + cd[68] + 164)]
                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                 gas gas_remaining wei
                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _780 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _794 = mem[_780]
                            require mem[_780] == mem[_780]
                            require mem[_780 + 32] == bool(mem[_780 + 32])
                            require idx < mem[96]
                            _900 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_780 + 32])
                            mem[_900] = _794
                        else:
                            if uint16(cd[((160 * idx) + cd[68] + 100)]) == 19:
                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 68).length
                                require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                _570 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                mem[_570] = cd[((160 * idx) + cd[68] + 36)]
                                require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                mem[_570 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                mem[_570 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                mem[_570 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                mem[_570 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                     gas gas_remaining wei
                                    args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _799 = mem[_785]
                                require mem[_785] == mem[_785]
                                require mem[_785 + 32] == bool(mem[_785 + 32])
                                require idx < mem[96]
                                _908 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_785 + 32])
                                mem[_908] = _799
                            else:
                                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 23:
                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                    call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 68).length
                                    require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                    _573 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                    mem[_573] = cd[((160 * idx) + cd[68] + 36)]
                                    require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                    mem[_573 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                    require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                    mem[_573 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                    require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                    mem[_573 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                    require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                    mem[_573 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                    require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                         gas gas_remaining wei
                                        args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _789 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _804 = mem[_789]
                                    require mem[_789] == mem[_789]
                                    require mem[_789 + 32] == bool(mem[_789 + 32])
                                    require idx < mem[96]
                                    _917 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_789 + 32])
                                    mem[_917] = _804
                                else:
                                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 24:
                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                        call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 68).length
                                        require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                        _577 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                        mem[_577] = cd[((160 * idx) + cd[68] + 36)]
                                        require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                        mem[_577 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                        require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                        mem[_577 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                        require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                        mem[_577 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                        require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                        mem[_577 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                        require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                             gas gas_remaining wei
                                            args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _795 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _810 = mem[_795]
                                        require mem[_795] == mem[_795]
                                        require mem[_795 + 32] == bool(mem[_795 + 32])
                                        require idx < mem[96]
                                        _928 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_795 + 32])
                                        mem[_928] = _810
                                    else:
                                        if uint16(cd[((160 * idx) + cd[68] + 100)]) == 27:
                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                            call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 68).length
                                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                            _581 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                            mem[_581] = cd[((160 * idx) + cd[68] + 36)]
                                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                            mem[_581 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                            mem[_581 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                            mem[_581 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                            mem[_581 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _800 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _817 = mem[_800]
                                            require mem[_800] == mem[_800]
                                            require mem[_800 + 32] == bool(mem[_800 + 32])
                                            require idx < mem[96]
                                            _941 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_800 + 32])
                                            mem[_941] = _817
                                        else:
                                            if uint16(cd[((160 * idx) + cd[68] + 100)]) == 28:
                                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 68).length
                                                require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                _586 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                mem[_586] = cd[((160 * idx) + cd[68] + 36)]
                                                require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                mem[_586 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                mem[_586 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                mem[_586 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                mem[_586 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _805 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _824 = mem[_805]
                                                require mem[_805] == mem[_805]
                                                require mem[_805 + 32] == bool(mem[_805 + 32])
                                                require idx < mem[96]
                                                _955 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_805 + 32])
                                                mem[_955] = _824
                                            else:
                                                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 29:
                                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                    call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 68).length
                                                    require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                    _588 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                    mem[_588] = cd[((160 * idx) + cd[68] + 36)]
                                                    require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                    mem[_588 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                    require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                    mem[_588 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                    require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                    mem[_588 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                    require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                    mem[_588 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                    require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _811 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _830 = mem[_811]
                                                    require mem[_811] == mem[_811]
                                                    require mem[_811 + 32] == bool(mem[_811 + 32])
                                                    require idx < mem[96]
                                                    _969 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_811 + 32])
                                                    mem[_969] = _830
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 30:
                                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                        call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 68).length
                                                        require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                        _591 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                        mem[_591] = cd[((160 * idx) + cd[68] + 36)]
                                                        require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                        mem[_591 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                        require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                        mem[_591 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                        require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                        mem[_591 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                        require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                        mem[_591 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                        require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _818 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _835 = mem[_818]
                                                        require mem[_818] == mem[_818]
                                                        require mem[_818 + 32] == bool(mem[_818 + 32])
                                                        require idx < mem[96]
                                                        _983 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_818 + 32])
                                                        mem[_983] = _835
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[68] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                            _534 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[_534] = cd[((160 * idx) + cd[68] + 36)]
                                                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[_534 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[_534 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[_534 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[_534 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _767 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _769 = mem[_767]
                                                            require mem[_767] == mem[_767]
                                                            require mem[_767 + 32] == bool(mem[_767 + 32])
                                                            require idx < mem[96]
                                                            _846 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_767 + 32])
                                                            mem[_846] = _769
                                                        else:
                                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                            call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 68).length
                                                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                            _599 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[_599] = cd[((160 * idx) + cd[68] + 36)]
                                                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[_599 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[_599 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[_599 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[_599 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _825 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _841 = mem[_825]
                                                            require mem[_825] == mem[_825]
                                                            require mem[_825 + 32] == bool(mem[_825 + 32])
                                                            require idx < mem[96]
                                                            _997 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_825 + 32])
                                                            mem[_997] = _841
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            s = cd[((160 * idx) + cd[68] + 164)]
            s = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        t = cd[4]
        while idx < ('cd', 68).length:
            require idx < mem[96]
            _1055 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 68).length
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _1056 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_1056] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_1056 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_1056 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_1056 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_1056 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if not uint16(cd[((160 * idx) + cd[68] + 100)]):
                mem[mem[64]] = 0xa58d57400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _1055
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 196] = bool(cd[36])
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[68] + 132)])
                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0xa58d574 with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, t, _1055, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), bool(cd[36]), uint16(cd[((160 * idx) + cd[68] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
    else:
        mem[64] = (32 * ('cd', 68).length) + 192
        mem[(32 * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 68).length) + 160] = 0
        mem[var34001] = (32 * ('cd', 68).length) + 128
        s = var34001
        idx = var34002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 68).length) + 128] = 0
            mem[(32 * ('cd', 68).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 68).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        s = 10000
        s = cd[4]
        while idx < ('cd', 68).length:
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            require idx < ('cd', 68).length
            if not uint16(cd[((160 * idx) + cd[68] + 100)]):
                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                _1350 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                mem[_1350] = cd[((160 * idx) + cd[68] + 36)]
                require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                mem[_1350 + 32] = cd[((160 * idx) + cd[68] + 68)]
                require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                mem[_1350 + 64] = cd[((160 * idx) + cd[68] + 100)]
                require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[_1350 + 96] = cd[((160 * idx) + cd[68] + 132)]
                require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[_1350 + 128] = cd[((160 * idx) + cd[68] + 164)]
                require not uint16(cd[((160 * idx) + cd[68] + 100)])
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                     gas gas_remaining wei
                    args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _1463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1469 = mem[_1463]
                require mem[_1463] == mem[_1463]
                require mem[_1463 + 32] == bool(mem[_1463 + 32])
                require idx < mem[96]
                _1516 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1463 + 32])
                mem[_1516] = _1469
            else:
                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 6:
                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                    call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 68).length
                    require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                    _1353 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                    mem[_1353] = cd[((160 * idx) + cd[68] + 36)]
                    require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                    mem[_1353 + 32] = cd[((160 * idx) + cd[68] + 68)]
                    require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                    mem[_1353 + 64] = cd[((160 * idx) + cd[68] + 100)]
                    require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                    mem[_1353 + 96] = cd[((160 * idx) + cd[68] + 132)]
                    require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                    mem[_1353 + 128] = cd[((160 * idx) + cd[68] + 164)]
                    require not uint16(cd[((160 * idx) + cd[68] + 100)])
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                         gas gas_remaining wei
                        args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1472 = mem[_1465]
                    require mem[_1465] == mem[_1465]
                    require mem[_1465 + 32] == bool(mem[_1465 + 32])
                    require idx < mem[96]
                    _1522 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1465 + 32])
                    mem[_1522] = _1472
                else:
                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 17:
                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                        call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 68).length
                        require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                        _1356 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                        mem[_1356] = cd[((160 * idx) + cd[68] + 36)]
                        require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                        mem[_1356 + 32] = cd[((160 * idx) + cd[68] + 68)]
                        require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                        mem[_1356 + 64] = cd[((160 * idx) + cd[68] + 100)]
                        require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                        mem[_1356 + 96] = cd[((160 * idx) + cd[68] + 132)]
                        require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                        mem[_1356 + 128] = cd[((160 * idx) + cd[68] + 164)]
                        require not uint16(cd[((160 * idx) + cd[68] + 100)])
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                             gas gas_remaining wei
                            args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1475 = mem[_1467]
                        require mem[_1467] == mem[_1467]
                        require mem[_1467 + 32] == bool(mem[_1467 + 32])
                        require idx < mem[96]
                        _1530 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1467 + 32])
                        mem[_1530] = _1475
                    else:
                        if uint16(cd[((160 * idx) + cd[68] + 100)]) == 18:
                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                            call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 68).length
                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                            _1359 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                            mem[_1359] = cd[((160 * idx) + cd[68] + 36)]
                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                            mem[_1359 + 32] = cd[((160 * idx) + cd[68] + 68)]
                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                            mem[_1359 + 64] = cd[((160 * idx) + cd[68] + 100)]
                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                            mem[_1359 + 96] = cd[((160 * idx) + cd[68] + 132)]
                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                            mem[_1359 + 128] = cd[((160 * idx) + cd[68] + 164)]
                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                 gas gas_remaining wei
                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1479 = mem[_1470]
                            require mem[_1470] == mem[_1470]
                            require mem[_1470 + 32] == bool(mem[_1470 + 32])
                            require idx < mem[96]
                            _1537 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1470 + 32])
                            mem[_1537] = _1479
                        else:
                            if uint16(cd[((160 * idx) + cd[68] + 100)]) == 19:
                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 68).length
                                require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                _1360 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                mem[_1360] = cd[((160 * idx) + cd[68] + 36)]
                                require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                mem[_1360 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                mem[_1360 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                mem[_1360 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                mem[_1360 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                     gas gas_remaining wei
                                    args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1473 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1482 = mem[_1473]
                                require mem[_1473] == mem[_1473]
                                require mem[_1473 + 32] == bool(mem[_1473 + 32])
                                require idx < mem[96]
                                _1544 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1473 + 32])
                                mem[_1544] = _1482
                            else:
                                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 23:
                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                    call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 68).length
                                    require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                    _1361 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                    mem[_1361] = cd[((160 * idx) + cd[68] + 36)]
                                    require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                    mem[_1361 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                    require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                    mem[_1361 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                    require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                    mem[_1361 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                    require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                    mem[_1361 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                    require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                         gas gas_remaining wei
                                        args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1476 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1485 = mem[_1476]
                                    require mem[_1476] == mem[_1476]
                                    require mem[_1476 + 32] == bool(mem[_1476 + 32])
                                    require idx < mem[96]
                                    _1551 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1476 + 32])
                                    mem[_1551] = _1485
                                else:
                                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 24:
                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                        call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 68).length
                                        require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                        _1362 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                        mem[_1362] = cd[((160 * idx) + cd[68] + 36)]
                                        require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                        mem[_1362 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                        require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                        mem[_1362 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                        require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                        mem[_1362 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                        require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                        mem[_1362 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                        require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                             gas gas_remaining wei
                                            args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1480 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1488 = mem[_1480]
                                        require mem[_1480] == mem[_1480]
                                        require mem[_1480 + 32] == bool(mem[_1480 + 32])
                                        require idx < mem[96]
                                        _1558 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1480 + 32])
                                        mem[_1558] = _1488
                                    else:
                                        if uint16(cd[((160 * idx) + cd[68] + 100)]) == 27:
                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                            call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 68).length
                                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                            _1363 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                            mem[_1363] = cd[((160 * idx) + cd[68] + 36)]
                                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                            mem[_1363 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                            mem[_1363 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                            mem[_1363 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                            mem[_1363 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1483 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _1492 = mem[_1483]
                                            require mem[_1483] == mem[_1483]
                                            require mem[_1483 + 32] == bool(mem[_1483 + 32])
                                            require idx < mem[96]
                                            _1565 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1483 + 32])
                                            mem[_1565] = _1492
                                        else:
                                            if uint16(cd[((160 * idx) + cd[68] + 100)]) == 28:
                                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 68).length
                                                require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                _1365 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                mem[_1365] = cd[((160 * idx) + cd[68] + 36)]
                                                require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                mem[_1365 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                mem[_1365 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                mem[_1365 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                mem[_1365 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1486 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _1495 = mem[_1486]
                                                require mem[_1486] == mem[_1486]
                                                require mem[_1486 + 32] == bool(mem[_1486 + 32])
                                                require idx < mem[96]
                                                _1572 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1486 + 32])
                                                mem[_1572] = _1495
                                            else:
                                                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 29:
                                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                    call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 68).length
                                                    require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                    _1366 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                    mem[_1366] = cd[((160 * idx) + cd[68] + 36)]
                                                    require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                    mem[_1366 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                    require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                    mem[_1366 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                    require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                    mem[_1366 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                    require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                    mem[_1366 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                    require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1489 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _1498 = mem[_1489]
                                                    require mem[_1489] == mem[_1489]
                                                    require mem[_1489 + 32] == bool(mem[_1489 + 32])
                                                    require idx < mem[96]
                                                    _1579 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1489 + 32])
                                                    mem[_1579] = _1498
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 30:
                                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                        call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 68).length
                                                        require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                        _1368 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                        mem[_1368] = cd[((160 * idx) + cd[68] + 36)]
                                                        require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                        mem[_1368 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                        require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                        mem[_1368 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                        require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                        mem[_1368 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                        require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                        mem[_1368 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                        require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _1493 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _1500 = mem[_1493]
                                                        require mem[_1493] == mem[_1493]
                                                        require mem[_1493 + 32] == bool(mem[_1493 + 32])
                                                        require idx < mem[96]
                                                        _1586 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1493 + 32])
                                                        mem[_1586] = _1500
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[68] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                            _1341 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[_1341] = cd[((160 * idx) + cd[68] + 36)]
                                                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[_1341 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[_1341 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[_1341 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[_1341 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1459 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1461 = mem[_1459]
                                                            require mem[_1459] == mem[_1459]
                                                            require mem[_1459 + 32] == bool(mem[_1459 + 32])
                                                            require idx < mem[96]
                                                            _1505 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1459 + 32])
                                                            mem[_1505] = _1461
                                                        else:
                                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[68] + 36)]))
                                                            call address(cd[((160 * idx) + cd[68] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 68).length
                                                            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
                                                            _1375 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[_1375] = cd[((160 * idx) + cd[68] + 36)]
                                                            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[_1375 + 32] = cd[((160 * idx) + cd[68] + 68)]
                                                            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[_1375 + 64] = cd[((160 * idx) + cd[68] + 100)]
                                                            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[_1375 + 96] = cd[((160 * idx) + cd[68] + 132)]
                                                            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[_1375 + 128] = cd[((160 * idx) + cd[68] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[68] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1496 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1503 = mem[_1496]
                                                            require mem[_1496] == mem[_1496]
                                                            require mem[_1496 + 32] == bool(mem[_1496 + 32])
                                                            require idx < mem[96]
                                                            _1593 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1496 + 32])
                                                            mem[_1593] = _1503
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            s = cd[((160 * idx) + cd[68] + 164)]
            s = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        t = cd[4]
        while idx < ('cd', 68).length:
            require idx < mem[96]
            _1603 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 68).length
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _1604 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_1604] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_1604 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_1604 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_1604 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_1604 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if not uint16(cd[((160 * idx) + cd[68] + 100)]):
                mem[mem[64]] = 0xa58d57400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _1603
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 196] = bool(cd[36])
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[68] + 132)])
                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0xa58d574 with:
                     gas gas_remaining wei
                    args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, t, _1603, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), bool(cd[36]), uint16(cd[((160 * idx) + cd[68] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
}

function sub_1d9575a5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (160 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        s = cd[4]
        while idx < ('cd', 36).length:
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            require idx < ('cd', 36).length
            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 36).length
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _571 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_571] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_571 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_571 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_571 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_571 + 128] = cd[((160 * idx) + cd[36] + 164)]
                require not uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                     gas gas_remaining wei
                    args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _813 = mem[_804]
                require mem[_804] == mem[_804]
                require mem[_804 + 32] == bool(mem[_804 + 32])
                require idx < mem[96]
                _910 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_804 + 32])
                mem[_910] = _813
            else:
                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 6:
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 36).length
                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                    _577 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_577] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_577 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_577 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_577 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_577 + 128] = cd[((160 * idx) + cd[36] + 164)]
                    require not uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                         gas gas_remaining wei
                        args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _818 = mem[_809]
                    require mem[_809] == mem[_809]
                    require mem[_809 + 32] == bool(mem[_809 + 32])
                    require idx < mem[96]
                    _921 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_809 + 32])
                    mem[_921] = _818
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 17:
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 36).length
                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                        _582 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_582] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_582 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_582 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_582 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_582 + 128] = cd[((160 * idx) + cd[36] + 164)]
                        require not uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                             gas gas_remaining wei
                            args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _811 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _822 = mem[_811]
                        require mem[_811] == mem[_811]
                        require mem[_811 + 32] == bool(mem[_811 + 32])
                        require idx < mem[96]
                        _932 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_811 + 32])
                        mem[_932] = _822
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 18:
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 36).length
                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                            _589 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_589] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_589 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_589 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_589 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_589 + 128] = cd[((160 * idx) + cd[36] + 164)]
                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                 gas gas_remaining wei
                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _828 = mem[_814]
                            require mem[_814] == mem[_814]
                            require mem[_814 + 32] == bool(mem[_814 + 32])
                            require idx < mem[96]
                            _942 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_814 + 32])
                            mem[_942] = _828
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 19:
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 36).length
                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                _592 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_592] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_592 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_592 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_592 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_592 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                     gas gas_remaining wei
                                    args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _833 = mem[_819]
                                require mem[_819] == mem[_819]
                                require mem[_819 + 32] == bool(mem[_819 + 32])
                                require idx < mem[96]
                                _950 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_819 + 32])
                                mem[_950] = _833
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 23:
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 36).length
                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                    _597 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_597] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_597 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_597 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_597 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_597 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                    require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                         gas gas_remaining wei
                                        args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _823 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _840 = mem[_823]
                                    require mem[_823] == mem[_823]
                                    require mem[_823 + 32] == bool(mem[_823 + 32])
                                    require idx < mem[96]
                                    _959 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_823 + 32])
                                    mem[_959] = _840
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 24:
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 36).length
                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                        _601 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_601] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_601 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_601 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_601 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_601 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                        require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                             gas gas_remaining wei
                                            args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _829 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _846 = mem[_829]
                                        require mem[_829] == mem[_829]
                                        require mem[_829 + 32] == bool(mem[_829 + 32])
                                        require idx < mem[96]
                                        _970 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_829 + 32])
                                        mem[_970] = _846
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 27:
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 36).length
                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                            _605 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_605] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_605 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_605 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_605 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_605 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _834 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _853 = mem[_834]
                                            require mem[_834] == mem[_834]
                                            require mem[_834 + 32] == bool(mem[_834 + 32])
                                            require idx < mem[96]
                                            _983 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_834 + 32])
                                            mem[_983] = _853
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 28:
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 36).length
                                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                _611 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_611] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_611 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_611 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_611 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_611 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _841 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _860 = mem[_841]
                                                require mem[_841] == mem[_841]
                                                require mem[_841 + 32] == bool(mem[_841 + 32])
                                                require idx < mem[96]
                                                _997 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_841 + 32])
                                                mem[_997] = _860
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 29:
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 36).length
                                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                    _613 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_613] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_613 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_613 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_613 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_613 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                    require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _847 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _866 = mem[_847]
                                                    require mem[_847] == mem[_847]
                                                    require mem[_847 + 32] == bool(mem[_847 + 32])
                                                    require idx < mem[96]
                                                    _1011 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_847 + 32])
                                                    mem[_1011] = _866
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 30:
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 36).length
                                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                        _615 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_615] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_615 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_615 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_615 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_615 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                        require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _854 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _871 = mem[_854]
                                                        require mem[_854] == mem[_854]
                                                        require mem[_854 + 32] == bool(mem[_854 + 32])
                                                        require idx < mem[96]
                                                        _1025 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_854 + 32])
                                                        mem[_1025] = _871
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _554 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_554] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_554 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_554 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_554 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_554 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _799 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _801 = mem[_799]
                                                            require mem[_799] == mem[_799]
                                                            require mem[_799 + 32] == bool(mem[_799 + 32])
                                                            require idx < mem[96]
                                                            _882 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_799 + 32])
                                                            mem[_882] = _801
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _617 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_617] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_617 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_617 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_617 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_617 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _861 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _877 = mem[_861]
                                                            require mem[_861] == mem[_861]
                                                            require mem[_861 + 32] == bool(mem[_861 + 32])
                                                            require idx < mem[96]
                                                            _1039 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_861 + 32])
                                                            mem[_1039] = _877
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            s = mem[mem[(32 * idx) + 128]]
            continue 
        s = 0
        t = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        u = cd[4]
        while s < ('cd', 36).length:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(t))
            staticcall address(t).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1569 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1570 = mem[_1569]
            require mem[_1569] == mem[_1569]
            _1575 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1570
            _1576 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1576 + 32] = mem[_1576 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _1579 = mem[_1576]
            w = _1576 + 32
            x = _1575 + 100
            v = mem[_1576]
            while v >= 32:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v - 32
                continue 
            mem[_1575 + floor32(mem[_1576]) + 100] = mem[_1576 + -(mem[_1576] % 32) + floor32(mem[_1576]) + 64 len mem[_1576] % 32] or Mask(8 * -(mem[_1576] % 32) + 32, -(8 * -(mem[_1576] % 32) + 32) + 256, mem[_1575 + floor32(mem[_1576]) + 100])
            call address(t).mem[_1575 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1575 + 104 len _1579 - 4]
            if return_data.size:
                mem[_1575 + 100] = return_data.size
                mem[_1575 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                mem[_1575 + ceil32(return_data.size) + 105] = this.address
                require ext_code.size(address(t))
                staticcall address(t).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_1575 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1575 + ceil32(return_data.size) + ceil32(return_data.size) + 101
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if _1570 != ext_call.return_data[0]:
                    return 1, address(t), ext_call.return_data[0], _1570
                require s < mem[96]
                _2071 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[_1575 + ceil32(return_data.size) + ceil32(return_data.size) + 105] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_1575 + ceil32(return_data.size) + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    require bool(_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 261 <= test266151307())
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 101] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 133] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229] = cd[((160 * s) + cd[36] + 164)]
                    if not uint16(cd[((160 * s) + cd[36] + 100)]):
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = u
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = _2071
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] = address(t)
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 393] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = 0
                        mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0xa58d574 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, u, _2071, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = this.address
                    require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                    staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if _2071:
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        if s < ('cd', 36).length - 1:
                            return 1, address(cd[((160 * s) + cd[36] + 68)]), 0, _2071
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 105] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 137] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = u
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 101] = 68
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 133] = address(cd[((160 * s) + cd[36] + 36)]) << 64 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    w = _1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 133
                    x = _1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201
                    v = 68
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 225 len 4] or Mask(224, 32, mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265])
                    call address(t).mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201 len 4] with:
                         gas gas_remaining wei
                        args mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 205 len 64]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 205] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1575 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if u:
                            if s < ('cd', 36).length - 1:
                                return 1, 
                                       address(t),
                                       0,
                                       u,
                                       mem[_1575 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329 len 9 * ceil32(return_data.size)]
                            require s < mem[96]
                            require s < ('cd', 36).length
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            s = s + 1
                            t = cd[((160 * s) + cd[36] + 68)]
                            u = mem[mem[(32 * s) + 128]]
                            continue 
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[_1575 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                        staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                gas gas_remaining wei
                               args mem[_1575 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 205 len 8 * ceil32(return_data.size)]
                        mem[_1575 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                            mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205] = 0
                            mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 237] = _2071
                        else:
                            mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205] = _2071
                            mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 237] = 0
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 269] = this.address
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 301] = 128
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 333] = 0
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                        call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205 len (13 * ceil32(return_data.size)) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205 len (13 * ceil32(return_data.size)) + 32]
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not _2071:
                            require s < mem[96]
                            require s < ('cd', 36).length
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            s = s + 1
                            t = cd[((160 * s) + cd[36] + 68)]
                            u = mem[mem[(32 * s) + 128]]
                            continue 
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        if s >= ('cd', 36).length - 1:
                            require s < mem[96]
                            require s < ('cd', 36).length
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            s = s + 1
                            t = cd[((160 * s) + cd[36] + 68)]
                            u = mem[mem[(32 * s) + 128]]
                            continue 
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201] = 1
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 233] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 265] = 0
                        mem[_1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 297] = _2071
                        return memory
                          from _1575 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201
                           len (15 * ceil32(return_data.size)) + 128
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = return_data.size
                    mem[_1575 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + (8 * ceil32(return_data.size)) + 206] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[_1575 + (8 * ceil32(return_data.size)) + 206 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    mem[_1575 + (8 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1575 + (9 * ceil32(return_data.size)) + 202
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if u:
                        if s < ('cd', 36).length - 1:
                            return 1, 
                                   address(t),
                                   0,
                                   u,
                                   mem[_1575 + (9 * ceil32(return_data.size)) + 330 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[_1575 + (9 * ceil32(return_data.size)) + 202] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                        staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                gas gas_remaining wei
                               args mem[_1575 + (9 * ceil32(return_data.size)) + 206 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[_1575 + (9 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                            mem[_1575 + (12 * ceil32(return_data.size)) + 238] = _2071
                            mem[_1575 + (12 * ceil32(return_data.size)) + 270] = this.address
                            mem[_1575 + (12 * ceil32(return_data.size)) + 302] = 128
                            mem[_1575 + (12 * ceil32(return_data.size)) + 334] = 0
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2071, address(this.address), 128, 0, mem[_1575 + (12 * ceil32(return_data.size)) + 366 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            mem[_1575 + (12 * ceil32(return_data.size)) + 238] = 0
                            mem[_1575 + (12 * ceil32(return_data.size)) + 270] = this.address
                            mem[_1575 + (12 * ceil32(return_data.size)) + 302] = 128
                            mem[_1575 + (12 * ceil32(return_data.size)) + 334] = 0
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2071, 0, address(this.address), 128, 0, mem[_1575 + (12 * ceil32(return_data.size)) + 366 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[_1575 + (12 * ceil32(return_data.size)) + 206] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[_1575 + (12 * ceil32(return_data.size)) + 238 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[_1575 + (12 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1575 + (12 * ceil32(return_data.size)) + 202
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if _2071:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            if s < ('cd', 36).length - 1:
                                return 1, 
                                       address(cd[((160 * s) + cd[36] + 68)]),
                                       0,
                                       _2071,
                                       mem[_1575 + (12 * ceil32(return_data.size)) + 330 len (18 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_call.success
                mem[_1575 + 104] = this.address
                require ext_code.size(address(t))
                staticcall address(t).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_1575 + 100] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1575 + ceil32(return_data.size) + 100
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if _1570 != ext_call.return_data[0]:
                    return 1, address(t), ext_call.return_data[0], _1570
                require s < mem[96]
                _2069 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[_1575 + ceil32(return_data.size) + 104] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_1575 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    require bool(_1575 + (2 * ceil32(return_data.size)) + 260 <= test266151307())
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 100] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 132] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 164] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 196] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 228] = cd[((160 * s) + cd[36] + 164)]
                    if not uint16(cd[((160 * s) + cd[36] + 100)]):
                        mem[_1575 + (2 * ceil32(return_data.size)) + 296] = u
                        mem[_1575 + (2 * ceil32(return_data.size)) + 328] = _2069
                        mem[_1575 + (2 * ceil32(return_data.size)) + 360] = address(t)
                        mem[_1575 + (2 * ceil32(return_data.size)) + 392] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[_1575 + (2 * ceil32(return_data.size)) + 424] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[_1575 + (2 * ceil32(return_data.size)) + 456] = 0
                        mem[_1575 + (2 * ceil32(return_data.size)) + 488] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0xa58d574 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, u, _2069, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 264] = this.address
                    require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                    staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1575 + (2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1575 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if _2069:
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        if s < ('cd', 36).length - 1:
                            return 1, address(cd[((160 * s) + cd[36] + 68)]), 0, _2069
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 104] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + (4 * ceil32(return_data.size)) + 136] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[_1575 + (4 * ceil32(return_data.size)) + 168] = u
                    mem[_1575 + (4 * ceil32(return_data.size)) + 100] = 68
                    mem[64] = _1575 + (4 * ceil32(return_data.size)) + 200
                    mem[_1575 + (4 * ceil32(return_data.size)) + 132] = address(cd[((160 * s) + cd[36] + 36)]) << 64 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    w = _1575 + (4 * ceil32(return_data.size)) + 132
                    x = mem[64]
                    v = mem[_1575 + (4 * ceil32(return_data.size)) + 100]
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1575 + (4 * ceil32(return_data.size)) + 100])] = mem[_1575 + (4 * ceil32(return_data.size)) + floor32(mem[_1575 + (4 * ceil32(return_data.size)) + 100]) + -(mem[_1575 + (4 * ceil32(return_data.size)) + 100] % 32) + 164 len mem[_1575 + (4 * ceil32(return_data.size)) + 100] % 32] or Mask(8 * -(mem[_1575 + (4 * ceil32(return_data.size)) + 100] % 32) + 32, -(8 * -(mem[_1575 + (4 * ceil32(return_data.size)) + 100] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1575 + (4 * ceil32(return_data.size)) + 100])])
                    call address(t).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1575 + (4 * ceil32(return_data.size)) + -mem[64] + 264]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2392] == mem[_2392]
                        if u != mem[_2392] - ext_call.return_data[0]:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_2392] - ext_call.return_data[0], u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2460] == mem[_2460 + 12 len 20]
                            if mem[_2460 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _2069
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2069, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2518 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2518] == mem[_2518]
                                if _2069 != mem[_2518] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2518] - ext_call.return_data[0], _2069
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2069, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2519 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2519] == mem[_2519]
                                if _2069 != mem[_2519] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2519] - ext_call.return_data[0], _2069
                    else:
                        _2356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2356] = return_data.size
                        mem[_2356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2393] == mem[_2393]
                        if u != mem[_2393] - ext_call.return_data[0]:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_2393] - ext_call.return_data[0], u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2461] == mem[_2461 + 12 len 20]
                            if mem[_2461 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _2069
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2069, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2520 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2520] == mem[_2520]
                                if _2069 != mem[_2520] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2520] - ext_call.return_data[0], _2069
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2069, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2521 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2521] == mem[_2521]
                                if _2069 != mem[_2521] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2521] - ext_call.return_data[0], _2069
            require s < mem[96]
            require s < ('cd', 36).length
            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
            s = s + 1
            t = cd[((160 * s) + cd[36] + 68)]
            u = mem[mem[(32 * s) + 128]]
            continue 
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[var28001] = (32 * ('cd', 36).length) + 128
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 36).length) + 128] = 0
            mem[(32 * ('cd', 36).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 36).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        s = cd[4]
        while idx < ('cd', 36).length:
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            require idx < ('cd', 36).length
            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 36).length
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _1623 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_1623] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_1623 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_1623 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_1623 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_1623 + 128] = cd[((160 * idx) + cd[36] + 164)]
                require not uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                     gas gas_remaining wei
                    args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _1770 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1780 = mem[_1770]
                require mem[_1770] == mem[_1770]
                require mem[_1770 + 32] == bool(mem[_1770 + 32])
                require idx < mem[96]
                _1839 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1770 + 32])
                mem[_1839] = _1780
            else:
                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 6:
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 36).length
                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                    _1626 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_1626] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_1626 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_1626 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_1626 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_1626 + 128] = cd[((160 * idx) + cd[36] + 164)]
                    require not uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                         gas gas_remaining wei
                        args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1783 = mem[_1774]
                    require mem[_1774] == mem[_1774]
                    require mem[_1774 + 32] == bool(mem[_1774 + 32])
                    require idx < mem[96]
                    _1847 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1774 + 32])
                    mem[_1847] = _1783
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 17:
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 36).length
                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                        _1631 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_1631] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_1631 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_1631 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_1631 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_1631 + 128] = cd[((160 * idx) + cd[36] + 164)]
                        require not uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                             gas gas_remaining wei
                            args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1786 = mem[_1778]
                        require mem[_1778] == mem[_1778]
                        require mem[_1778 + 32] == bool(mem[_1778 + 32])
                        require idx < mem[96]
                        _1855 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1778 + 32])
                        mem[_1855] = _1786
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 18:
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 36).length
                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                            _1636 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_1636] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_1636 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_1636 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_1636 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_1636 + 128] = cd[((160 * idx) + cd[36] + 164)]
                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                 gas gas_remaining wei
                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1781 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1790 = mem[_1781]
                            require mem[_1781] == mem[_1781]
                            require mem[_1781 + 32] == bool(mem[_1781 + 32])
                            require idx < mem[96]
                            _1862 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1781 + 32])
                            mem[_1862] = _1790
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 19:
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 36).length
                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                _1637 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_1637] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_1637 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_1637 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_1637 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_1637 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                     gas gas_remaining wei
                                    args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1793 = mem[_1784]
                                require mem[_1784] == mem[_1784]
                                require mem[_1784 + 32] == bool(mem[_1784 + 32])
                                require idx < mem[96]
                                _1869 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1784 + 32])
                                mem[_1869] = _1793
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 23:
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 36).length
                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                    _1640 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_1640] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_1640 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_1640 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_1640 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_1640 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                    require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                         gas gas_remaining wei
                                        args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1787 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1798 = mem[_1787]
                                    require mem[_1787] == mem[_1787]
                                    require mem[_1787 + 32] == bool(mem[_1787 + 32])
                                    require idx < mem[96]
                                    _1876 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1787 + 32])
                                    mem[_1876] = _1798
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 24:
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 36).length
                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                        _1641 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_1641] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_1641 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_1641 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_1641 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_1641 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                        require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                             gas gas_remaining wei
                                            args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1791 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1801 = mem[_1791]
                                        require mem[_1791] == mem[_1791]
                                        require mem[_1791 + 32] == bool(mem[_1791 + 32])
                                        require idx < mem[96]
                                        _1883 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1791 + 32])
                                        mem[_1883] = _1801
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 27:
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 36).length
                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                            _1642 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_1642] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_1642 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_1642 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_1642 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_1642 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1794 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _1807 = mem[_1794]
                                            require mem[_1794] == mem[_1794]
                                            require mem[_1794 + 32] == bool(mem[_1794 + 32])
                                            require idx < mem[96]
                                            _1890 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1794 + 32])
                                            mem[_1890] = _1807
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 28:
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 36).length
                                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                _1645 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_1645] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_1645 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_1645 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_1645 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_1645 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1799 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _1810 = mem[_1799]
                                                require mem[_1799] == mem[_1799]
                                                require mem[_1799 + 32] == bool(mem[_1799 + 32])
                                                require idx < mem[96]
                                                _1897 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1799 + 32])
                                                mem[_1897] = _1810
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 29:
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 36).length
                                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                    _1646 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_1646] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_1646 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_1646 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_1646 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_1646 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                    require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                    delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1802 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _1815 = mem[_1802]
                                                    require mem[_1802] == mem[_1802]
                                                    require mem[_1802 + 32] == bool(mem[_1802 + 32])
                                                    require idx < mem[96]
                                                    _1904 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1802 + 32])
                                                    mem[_1904] = _1815
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 30:
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 36).length
                                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                        _1647 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_1647] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_1647 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_1647 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_1647 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_1647 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                        require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _1808 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _1817 = mem[_1808]
                                                        require mem[_1808] == mem[_1808]
                                                        require mem[_1808 + 32] == bool(mem[_1808 + 32])
                                                        require idx < mem[96]
                                                        _1911 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1808 + 32])
                                                        mem[_1911] = _1817
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1610 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1610] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1610 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1610 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1610 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1610 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1766 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1768 = mem[_1766]
                                                            require mem[_1766] == mem[_1766]
                                                            require mem[_1766 + 32] == bool(mem[_1766 + 32])
                                                            require idx < mem[96]
                                                            _1824 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1766 + 32])
                                                            mem[_1824] = _1768
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1648 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1648] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1648 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1648 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1648 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1648 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            require not uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                                                            delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args s, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1811 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1820 = mem[_1811]
                                                            require mem[_1811] == mem[_1811]
                                                            require mem[_1811 + 32] == bool(mem[_1811 + 32])
                                                            require idx < mem[96]
                                                            _1918 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1811 + 32])
                                                            mem[_1918] = _1820
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            s = mem[mem[(32 * idx) + 128]]
            continue 
        s = 0
        t = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        u = cd[4]
        while s < ('cd', 36).length:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(t))
            staticcall address(t).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2374 = mem[_2369]
            require mem[_2369] == mem[_2369]
            _2396 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _2374
            _2397 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2397 + 32] = mem[_2397 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _2400 = mem[_2397]
            w = _2397 + 32
            x = _2396 + 100
            v = mem[_2397]
            while v >= 32:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v - 32
                continue 
            mem[_2396 + floor32(mem[_2397]) + 100] = mem[_2397 + -(mem[_2397] % 32) + floor32(mem[_2397]) + 64 len mem[_2397] % 32] or Mask(8 * -(mem[_2397] % 32) + 32, -(8 * -(mem[_2397] % 32) + 32) + 256, mem[_2396 + floor32(mem[_2397]) + 100])
            call address(t).mem[_2396 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_2396 + 104 len _2400 - 4]
            if return_data.size:
                mem[_2396 + 100] = return_data.size
                mem[_2396 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                mem[_2396 + ceil32(return_data.size) + 105] = this.address
                require ext_code.size(address(t))
                staticcall address(t).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_2396 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2396 + ceil32(return_data.size) + ceil32(return_data.size) + 101
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if _2374 != ext_call.return_data[0]:
                    return 1, address(t), ext_call.return_data[0], _2374
                require s < mem[96]
                _2704 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[_2396 + ceil32(return_data.size) + ceil32(return_data.size) + 105] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_2396 + ceil32(return_data.size) + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    require bool(_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 261 <= test266151307())
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 101] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 133] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 229] = cd[((160 * s) + cd[36] + 164)]
                    if not uint16(cd[((160 * s) + cd[36] + 100)]):
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = u
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = _2704
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] = address(t)
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 393] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = 0
                        mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0xa58d574 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, u, _2704, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = this.address
                    require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                    staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if _2704:
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        if s < ('cd', 36).length - 1:
                            return 1, address(cd[((160 * s) + cd[36] + 68)]), 0, _2704
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 105] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 137] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = u
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 101] = 68
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 133] = address(cd[((160 * s) + cd[36] + 36)]) << 64 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    w = _2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 133
                    x = _2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201
                    v = 68
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 225 len 4] or Mask(224, 32, mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265])
                    call address(t).mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201 len 4] with:
                         gas gas_remaining wei
                        args mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 205 len 64]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 205] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2396 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if u:
                            if s < ('cd', 36).length - 1:
                                return 1, 
                                       address(t),
                                       0,
                                       u,
                                       mem[_2396 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329 len 9 * ceil32(return_data.size)]
                            require s < mem[96]
                            require s < ('cd', 36).length
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            s = s + 1
                            t = cd[((160 * s) + cd[36] + 68)]
                            u = mem[mem[(32 * s) + 128]]
                            continue 
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[_2396 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                        staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                gas gas_remaining wei
                               args mem[_2396 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 205 len 8 * ceil32(return_data.size)]
                        mem[_2396 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                            mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205] = 0
                            mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 237] = _2704
                        else:
                            mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205] = _2704
                            mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 237] = 0
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 269] = this.address
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 301] = 128
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 333] = 0
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                        call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205 len (13 * ceil32(return_data.size)) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 205 len (13 * ceil32(return_data.size)) + 32]
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not _2704:
                            require s < mem[96]
                            require s < ('cd', 36).length
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            s = s + 1
                            t = cd[((160 * s) + cd[36] + 68)]
                            u = mem[mem[(32 * s) + 128]]
                            continue 
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        if s >= ('cd', 36).length - 1:
                            require s < mem[96]
                            require s < ('cd', 36).length
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            s = s + 1
                            t = cd[((160 * s) + cd[36] + 68)]
                            u = mem[mem[(32 * s) + 128]]
                            continue 
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201] = 1
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 233] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 265] = 0
                        mem[_2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 297] = _2704
                        return memory
                          from _2396 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 201
                           len (15 * ceil32(return_data.size)) + 128
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = return_data.size
                    mem[_2396 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + (8 * ceil32(return_data.size)) + 206] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[_2396 + (8 * ceil32(return_data.size)) + 206 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    mem[_2396 + (8 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2396 + (9 * ceil32(return_data.size)) + 202
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if u:
                        if s < ('cd', 36).length - 1:
                            return 1, 
                                   address(t),
                                   0,
                                   u,
                                   mem[_2396 + (9 * ceil32(return_data.size)) + 330 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[_2396 + (9 * ceil32(return_data.size)) + 202] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                        staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                gas gas_remaining wei
                               args mem[_2396 + (9 * ceil32(return_data.size)) + 206 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[_2396 + (9 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                            mem[_2396 + (12 * ceil32(return_data.size)) + 238] = _2704
                            mem[_2396 + (12 * ceil32(return_data.size)) + 270] = this.address
                            mem[_2396 + (12 * ceil32(return_data.size)) + 302] = 128
                            mem[_2396 + (12 * ceil32(return_data.size)) + 334] = 0
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2704, address(this.address), 128, 0, mem[_2396 + (12 * ceil32(return_data.size)) + 366 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            mem[_2396 + (12 * ceil32(return_data.size)) + 238] = 0
                            mem[_2396 + (12 * ceil32(return_data.size)) + 270] = this.address
                            mem[_2396 + (12 * ceil32(return_data.size)) + 302] = 128
                            mem[_2396 + (12 * ceil32(return_data.size)) + 334] = 0
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2704, 0, address(this.address), 128, 0, mem[_2396 + (12 * ceil32(return_data.size)) + 366 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[_2396 + (12 * ceil32(return_data.size)) + 206] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[_2396 + (12 * ceil32(return_data.size)) + 238 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[_2396 + (12 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2396 + (12 * ceil32(return_data.size)) + 202
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if _2704:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            if s < ('cd', 36).length - 1:
                                return 1, 
                                       address(cd[((160 * s) + cd[36] + 68)]),
                                       0,
                                       _2704,
                                       mem[_2396 + (12 * ceil32(return_data.size)) + 330 len (18 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_call.success
                mem[_2396 + 104] = this.address
                require ext_code.size(address(t))
                staticcall address(t).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_2396 + 100] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2396 + ceil32(return_data.size) + 100
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if _2374 != ext_call.return_data[0]:
                    return 1, address(t), ext_call.return_data[0], _2374
                require s < mem[96]
                _2702 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[_2396 + ceil32(return_data.size) + 104] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_2396 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    require bool(_2396 + (2 * ceil32(return_data.size)) + 260 <= test266151307())
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 100] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 132] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 164] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 196] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 228] = cd[((160 * s) + cd[36] + 164)]
                    if not uint16(cd[((160 * s) + cd[36] + 100)]):
                        mem[_2396 + (2 * ceil32(return_data.size)) + 296] = u
                        mem[_2396 + (2 * ceil32(return_data.size)) + 328] = _2702
                        mem[_2396 + (2 * ceil32(return_data.size)) + 360] = address(t)
                        mem[_2396 + (2 * ceil32(return_data.size)) + 392] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[_2396 + (2 * ceil32(return_data.size)) + 424] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[_2396 + (2 * ceil32(return_data.size)) + 456] = 0
                        mem[_2396 + (2 * ceil32(return_data.size)) + 488] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19)
                        delegate 0xf6eda90bdd3e76f65fa7d99fc7a2a99f368cac19.0xa58d574 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, u, _2702, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 264] = this.address
                    require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                    staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_2396 + (2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2396 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if _2702:
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        if s < ('cd', 36).length - 1:
                            return 1, address(cd[((160 * s) + cd[36] + 68)]), 0, _2702
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 104] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + (4 * ceil32(return_data.size)) + 136] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[_2396 + (4 * ceil32(return_data.size)) + 168] = u
                    mem[_2396 + (4 * ceil32(return_data.size)) + 100] = 68
                    mem[64] = _2396 + (4 * ceil32(return_data.size)) + 200
                    mem[_2396 + (4 * ceil32(return_data.size)) + 132] = address(cd[((160 * s) + cd[36] + 36)]) << 64 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    w = _2396 + (4 * ceil32(return_data.size)) + 132
                    x = mem[64]
                    v = mem[_2396 + (4 * ceil32(return_data.size)) + 100]
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2396 + (4 * ceil32(return_data.size)) + 100])] = mem[_2396 + (4 * ceil32(return_data.size)) + floor32(mem[_2396 + (4 * ceil32(return_data.size)) + 100]) + -(mem[_2396 + (4 * ceil32(return_data.size)) + 100] % 32) + 164 len mem[_2396 + (4 * ceil32(return_data.size)) + 100] % 32] or Mask(8 * -(mem[_2396 + (4 * ceil32(return_data.size)) + 100] % 32) + 32, -(8 * -(mem[_2396 + (4 * ceil32(return_data.size)) + 100] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2396 + (4 * ceil32(return_data.size)) + 100])])
                    call address(t).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2396 + (4 * ceil32(return_data.size)) + -mem[64] + 264]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2879 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2879] == mem[_2879]
                        if u != mem[_2879] - ext_call.return_data[0]:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_2879] - ext_call.return_data[0], u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2921] == mem[_2921 + 12 len 20]
                            if mem[_2921 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _2702
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2702, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2965 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2965] == mem[_2965]
                                if _2702 != mem[_2965] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2965] - ext_call.return_data[0], _2702
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2702, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2966 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2966] == mem[_2966]
                                if _2702 != mem[_2966] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2966] - ext_call.return_data[0], _2702
                    else:
                        _2849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2849] = return_data.size
                        mem[_2849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2880] == mem[_2880]
                        if u != mem[_2880] - ext_call.return_data[0]:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_2880] - ext_call.return_data[0], u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2922] == mem[_2922 + 12 len 20]
                            if mem[_2922 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _2702
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2702, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2967 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2967] == mem[_2967]
                                if _2702 != mem[_2967] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2967] - ext_call.return_data[0], _2702
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2702, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2968 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2968] == mem[_2968]
                                if _2702 != mem[_2968] - ext_call.return_data[0]:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_2968] - ext_call.return_data[0], _2702
            require s < mem[96]
            require s < ('cd', 36).length
            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
            s = s + 1
            t = cd[((160 * s) + cd[36] + 68)]
            u = mem[mem[(32 * s) + 128]]
            continue 
    return 0
}



}
