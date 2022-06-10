contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require owner == msg.sender
    require arg1
    stor1[address(arg1)] = uint8(arg2)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
}

function unwrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner == msg.sender
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner == msg.sender
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function sub_3f33c14b(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    if owner == msg.sender:
        require cd[4] < cd[36]
        mem[100] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] >= cd[4]
        require ('cd', 68).length > 1
        require ('cd', 68).length < 6
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((64 * ('cd', 68).length - 1) + cd[68] + 68)] == address(cd[((64 * ('cd', 68).length - 1) + cd[68] + 68)])
        require address(cd[((64 * ('cd', 68).length - 1) + cd[68] + 68)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if ('cd', 68).length > -2:
            revert with 'NH{q', 17
        if ('cd', 68).length + 1 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ('cd', 68).length + 1
        mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length + 1) + 128
        if not ('cd', 68).length + 1:
            if 0 >= ('cd', 68).length + 1:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + 128] = cd[4]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _420 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_465] == mem[_465 + 18 len 14]
                    require mem[_465 + 32] == mem[_465 + 50 len 14]
                    require mem[_465 + 64] == mem[_465 + 92 len 4]
                    if _420 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_465 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_465 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _420 and 997 > -1 / _420:
                            revert with 'NH{q', 17
                        if 997 * _420 and mem[_465 + 50 len 14] > -1 / 997 * _420:
                            revert with 'NH{q', 17
                        if mem[_465 + 18 len 14] and 1000 > -1 / mem[_465 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_465 + 18 len 14] > (-997 * _420) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_465 + 18 len 14]) + (997 * _420):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _420 * mem[_465 + 50 len 14] / (1000 * mem[_465 + 18 len 14]) + (997 * _420)
                    else:
                        if mem[_465 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_465 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _420 and 997 > -1 / _420:
                            revert with 'NH{q', 17
                        if 997 * _420 and mem[_465 + 18 len 14] > -1 / 997 * _420:
                            revert with 'NH{q', 17
                        if mem[_465 + 50 len 14] and 1000 > -1 / mem[_465 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_465 + 50 len 14] > (-997 * _420) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_465 + 50 len 14]) + (997 * _420):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _420 * mem[_465 + 18 len 14] / (1000 * mem[_465 + 50 len 14]) + (997 * _420)
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_466] == mem[_466 + 18 len 14]
                    require mem[_466 + 32] == mem[_466 + 50 len 14]
                    require mem[_466 + 64] == mem[_466 + 92 len 4]
                    if _420 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        if mem[_466 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_466 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _420 and 997 > -1 / _420:
                            revert with 'NH{q', 17
                        if 997 * _420 and mem[_466 + 50 len 14] > -1 / 997 * _420:
                            revert with 'NH{q', 17
                        if mem[_466 + 18 len 14] and 1000 > -1 / mem[_466 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_466 + 18 len 14] > (-997 * _420) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_466 + 18 len 14]) + (997 * _420):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _420 * mem[_466 + 50 len 14] / (1000 * mem[_466 + 18 len 14]) + (997 * _420)
                    else:
                        if mem[_466 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_466 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _420 and 997 > -1 / _420:
                            revert with 'NH{q', 17
                        if 997 * _420 and mem[_466 + 18 len 14] > -1 / 997 * _420:
                            revert with 'NH{q', 17
                        if mem[_466 + 50 len 14] and 1000 > -1 / mem[_466 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_466 + 50 len 14] > (-997 * _420) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_466 + 50 len 14]) + (997 * _420):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _420 * mem[_466 + 18 len 14] / (1000 * mem[_466 + 50 len 14]) + (997 * _420)
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
            if mem[ceil32(return_data.size) + 96] < 1:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] < cd[36]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            mem[mem[64] + 4] = address(('cd', 68)[0])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 68)[0]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_464] == bool(mem[_464])
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(s):
                        _868 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _884 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_884 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_884 + 36] = 0
                            mem[_884 + 68] = _868
                            mem[_884 + 100] = this.address
                            mem[_884 + 132] = 128
                            mem[_884 + 164] = mem[_884]
                            s = 0
                            while s < mem[_884]:
                                mem[_884 + s + 196] = mem[_884 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_884]) > mem[_884]:
                                mem[_884 + mem[_884] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _868, address(this.address), 128, mem[_884], mem[_884 + 196 len ceil32(mem[_884])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _932 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_932 + 36] = 0
                            mem[_932 + 68] = _868
                            mem[_932 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_932 + 132] = 128
                            mem[_932 + 164] = mem[_932]
                            s = 0
                            while s < mem[_932]:
                                mem[_932 + s + 196] = mem[_932 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_932]) > mem[_932]:
                                mem[_932 + mem[_932] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _868, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_932], mem[_932 + 196 len ceil32(mem[_932])]
                    else:
                        _869 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _885 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_885 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_885 + 36] = _869
                            mem[_885 + 68] = 0
                            mem[_885 + 100] = this.address
                            mem[_885 + 132] = 128
                            mem[_885 + 164] = mem[_885]
                            s = 0
                            while s < mem[_885]:
                                mem[_885 + s + 196] = mem[_885 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_885]) > mem[_885]:
                                mem[_885 + mem[_885] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _869, 0, address(this.address), 128, mem[_885], mem[_885 + 196 len ceil32(mem[_885])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _933 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_933 + 36] = _869
                            mem[_933 + 68] = 0
                            mem[_933 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_933 + 132] = 128
                            mem[_933 + 164] = mem[_933]
                            s = 0
                            while s < mem[_933]:
                                mem[_933 + s + 196] = mem[_933 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_933]) > mem[_933]:
                                mem[_933 + mem[_933] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _869, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_933], mem[_933 + 196 len ceil32(mem[_933])]
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        _870 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _886 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_886 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_886 + 36] = 0
                            mem[_886 + 68] = _870
                            mem[_886 + 100] = this.address
                            mem[_886 + 132] = 128
                            mem[_886 + 164] = mem[_886]
                            s = 0
                            while s < mem[_886]:
                                mem[_886 + s + 196] = mem[_886 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_886]) > mem[_886]:
                                mem[_886 + mem[_886] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _870, address(this.address), 128, mem[_886], mem[_886 + 196 len ceil32(mem[_886])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _934 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_934 + 36] = 0
                            mem[_934 + 68] = _870
                            mem[_934 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_934 + 132] = 128
                            mem[_934 + 164] = mem[_934]
                            s = 0
                            while s < mem[_934]:
                                mem[_934 + s + 196] = mem[_934 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_934]) > mem[_934]:
                                mem[_934 + mem[_934] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _870, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_934], mem[_934 + 196 len ceil32(mem[_934])]
                    else:
                        _871 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _887 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_887 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_887 + 36] = _871
                            mem[_887 + 68] = 0
                            mem[_887 + 100] = this.address
                            mem[_887 + 132] = 128
                            mem[_887 + 164] = mem[_887]
                            s = 0
                            while s < mem[_887]:
                                mem[_887 + s + 196] = mem[_887 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_887]) > mem[_887]:
                                mem[_887 + mem[_887] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _871, 0, address(this.address), 128, mem[_887], mem[_887 + 196 len ceil32(mem[_887])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _935 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_935 + 36] = _871
                            mem[_935 + 68] = 0
                            mem[_935 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_935 + 132] = 128
                            mem[_935 + 164] = mem[_935]
                            s = 0
                            while s < mem[_935]:
                                mem[_935 + s + 196] = mem[_935 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_935]) > mem[_935]:
                                mem[_935 + mem[_935] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _871, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_935], mem[_935 + 196 len ceil32(mem[_935])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ('cd', 68).length + 1] = call.data[calldata.size len 32 * ('cd', 68).length + 1]
            if 0 >= ('cd', 68).length + 1:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + 128] = cd[4]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _421 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_468] == mem[_468 + 18 len 14]
                    require mem[_468 + 32] == mem[_468 + 50 len 14]
                    require mem[_468 + 64] == mem[_468 + 92 len 4]
                    if _421 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_468 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_468 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _421 and 997 > -1 / _421:
                            revert with 'NH{q', 17
                        if 997 * _421 and mem[_468 + 50 len 14] > -1 / 997 * _421:
                            revert with 'NH{q', 17
                        if mem[_468 + 18 len 14] and 1000 > -1 / mem[_468 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_468 + 18 len 14] > (-997 * _421) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_468 + 18 len 14]) + (997 * _421):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _421 * mem[_468 + 50 len 14] / (1000 * mem[_468 + 18 len 14]) + (997 * _421)
                    else:
                        if mem[_468 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_468 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _421 and 997 > -1 / _421:
                            revert with 'NH{q', 17
                        if 997 * _421 and mem[_468 + 18 len 14] > -1 / 997 * _421:
                            revert with 'NH{q', 17
                        if mem[_468 + 50 len 14] and 1000 > -1 / mem[_468 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_468 + 50 len 14] > (-997 * _421) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_468 + 50 len 14]) + (997 * _421):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _421 * mem[_468 + 18 len 14] / (1000 * mem[_468 + 50 len 14]) + (997 * _421)
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_469] == mem[_469 + 18 len 14]
                    require mem[_469 + 32] == mem[_469 + 50 len 14]
                    require mem[_469 + 64] == mem[_469 + 92 len 4]
                    if _421 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        if mem[_469 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_469 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _421 and 997 > -1 / _421:
                            revert with 'NH{q', 17
                        if 997 * _421 and mem[_469 + 50 len 14] > -1 / 997 * _421:
                            revert with 'NH{q', 17
                        if mem[_469 + 18 len 14] and 1000 > -1 / mem[_469 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_469 + 18 len 14] > (-997 * _421) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_469 + 18 len 14]) + (997 * _421):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _421 * mem[_469 + 50 len 14] / (1000 * mem[_469 + 18 len 14]) + (997 * _421)
                    else:
                        if mem[_469 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_469 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _421 and 997 > -1 / _421:
                            revert with 'NH{q', 17
                        if 997 * _421 and mem[_469 + 18 len 14] > -1 / 997 * _421:
                            revert with 'NH{q', 17
                        if mem[_469 + 50 len 14] and 1000 > -1 / mem[_469 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_469 + 50 len 14] > (-997 * _421) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_469 + 50 len 14]) + (997 * _421):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _421 * mem[_469 + 18 len 14] / (1000 * mem[_469 + 50 len 14]) + (997 * _421)
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
            if mem[ceil32(return_data.size) + 96] < 1:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] < cd[36]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            mem[mem[64] + 4] = address(('cd', 68)[0])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 68)[0]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_467] == bool(mem[_467])
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(s):
                        _872 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _888 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_888 + 36] = 0
                            mem[_888 + 68] = _872
                            mem[_888 + 100] = this.address
                            mem[_888 + 132] = 128
                            mem[_888 + 164] = mem[_888]
                            s = 0
                            while s < mem[_888]:
                                mem[_888 + s + 196] = mem[_888 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_888]) > mem[_888]:
                                mem[_888 + mem[_888] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _872, address(this.address), 128, mem[_888], mem[_888 + 196 len ceil32(mem[_888])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _936 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_936 + 36] = 0
                            mem[_936 + 68] = _872
                            mem[_936 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_936 + 132] = 128
                            mem[_936 + 164] = mem[_936]
                            s = 0
                            while s < mem[_936]:
                                mem[_936 + s + 196] = mem[_936 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_936]) > mem[_936]:
                                mem[_936 + mem[_936] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _872, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_936], mem[_936 + 196 len ceil32(mem[_936])]
                    else:
                        _873 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _889 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_889 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_889 + 36] = _873
                            mem[_889 + 68] = 0
                            mem[_889 + 100] = this.address
                            mem[_889 + 132] = 128
                            mem[_889 + 164] = mem[_889]
                            s = 0
                            while s < mem[_889]:
                                mem[_889 + s + 196] = mem[_889 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_889]) > mem[_889]:
                                mem[_889 + mem[_889] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _873, 0, address(this.address), 128, mem[_889], mem[_889 + 196 len ceil32(mem[_889])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _937 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_937 + 36] = _873
                            mem[_937 + 68] = 0
                            mem[_937 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_937 + 132] = 128
                            mem[_937 + 164] = mem[_937]
                            s = 0
                            while s < mem[_937]:
                                mem[_937 + s + 196] = mem[_937 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_937]) > mem[_937]:
                                mem[_937 + mem[_937] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _873, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_937], mem[_937 + 196 len ceil32(mem[_937])]
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        _874 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _890 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_890 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_890 + 36] = 0
                            mem[_890 + 68] = _874
                            mem[_890 + 100] = this.address
                            mem[_890 + 132] = 128
                            mem[_890 + 164] = mem[_890]
                            s = 0
                            while s < mem[_890]:
                                mem[_890 + s + 196] = mem[_890 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_890]) > mem[_890]:
                                mem[_890 + mem[_890] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _874, address(this.address), 128, mem[_890], mem[_890 + 196 len ceil32(mem[_890])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _938 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_938 + 36] = 0
                            mem[_938 + 68] = _874
                            mem[_938 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_938 + 132] = 128
                            mem[_938 + 164] = mem[_938]
                            s = 0
                            while s < mem[_938]:
                                mem[_938 + s + 196] = mem[_938 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_938]) > mem[_938]:
                                mem[_938 + mem[_938] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _874, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_938], mem[_938 + 196 len ceil32(mem[_938])]
                    else:
                        _875 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _891 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_891 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_891 + 36] = _875
                            mem[_891 + 68] = 0
                            mem[_891 + 100] = this.address
                            mem[_891 + 132] = 128
                            mem[_891 + 164] = mem[_891]
                            s = 0
                            while s < mem[_891]:
                                mem[_891 + s + 196] = mem[_891 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_891]) > mem[_891]:
                                mem[_891 + mem[_891] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _875, 0, address(this.address), 128, mem[_891], mem[_891 + 196 len ceil32(mem[_891])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _939 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_939 + 36] = _875
                            mem[_939 + 68] = 0
                            mem[_939 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_939 + 132] = 128
                            mem[_939 + 164] = mem[_939]
                            s = 0
                            while s < mem[_939]:
                                mem[_939 + s + 196] = mem[_939 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_939]) > mem[_939]:
                                mem[_939 + mem[_939] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _875, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_939], mem[_939 + 196 len ceil32(mem[_939])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
    else:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require cd[4] < cd[36]
        mem[100] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] >= cd[4]
        require ('cd', 68).length > 1
        require ('cd', 68).length < 6
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((64 * ('cd', 68).length - 1) + cd[68] + 68)] == address(cd[((64 * ('cd', 68).length - 1) + cd[68] + 68)])
        require address(cd[((64 * ('cd', 68).length - 1) + cd[68] + 68)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if ('cd', 68).length > -2:
            revert with 'NH{q', 17
        if ('cd', 68).length + 1 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ('cd', 68).length + 1
        mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length + 1) + 128
        if not ('cd', 68).length + 1:
            if 0 >= ('cd', 68).length + 1:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + 128] = cd[4]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _422 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_471] == mem[_471 + 18 len 14]
                    require mem[_471 + 32] == mem[_471 + 50 len 14]
                    require mem[_471 + 64] == mem[_471 + 92 len 4]
                    if _422 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_471 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_471 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _422 and 997 > -1 / _422:
                            revert with 'NH{q', 17
                        if 997 * _422 and mem[_471 + 50 len 14] > -1 / 997 * _422:
                            revert with 'NH{q', 17
                        if mem[_471 + 18 len 14] and 1000 > -1 / mem[_471 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_471 + 18 len 14] > (-997 * _422) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_471 + 18 len 14]) + (997 * _422):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _422 * mem[_471 + 50 len 14] / (1000 * mem[_471 + 18 len 14]) + (997 * _422)
                    else:
                        if mem[_471 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_471 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _422 and 997 > -1 / _422:
                            revert with 'NH{q', 17
                        if 997 * _422 and mem[_471 + 18 len 14] > -1 / 997 * _422:
                            revert with 'NH{q', 17
                        if mem[_471 + 50 len 14] and 1000 > -1 / mem[_471 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_471 + 50 len 14] > (-997 * _422) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_471 + 50 len 14]) + (997 * _422):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _422 * mem[_471 + 18 len 14] / (1000 * mem[_471 + 50 len 14]) + (997 * _422)
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_472] == mem[_472 + 18 len 14]
                    require mem[_472 + 32] == mem[_472 + 50 len 14]
                    require mem[_472 + 64] == mem[_472 + 92 len 4]
                    if _422 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        if mem[_472 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_472 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _422 and 997 > -1 / _422:
                            revert with 'NH{q', 17
                        if 997 * _422 and mem[_472 + 50 len 14] > -1 / 997 * _422:
                            revert with 'NH{q', 17
                        if mem[_472 + 18 len 14] and 1000 > -1 / mem[_472 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_472 + 18 len 14] > (-997 * _422) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_472 + 18 len 14]) + (997 * _422):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _422 * mem[_472 + 50 len 14] / (1000 * mem[_472 + 18 len 14]) + (997 * _422)
                    else:
                        if mem[_472 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_472 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _422 and 997 > -1 / _422:
                            revert with 'NH{q', 17
                        if 997 * _422 and mem[_472 + 18 len 14] > -1 / 997 * _422:
                            revert with 'NH{q', 17
                        if mem[_472 + 50 len 14] and 1000 > -1 / mem[_472 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_472 + 50 len 14] > (-997 * _422) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_472 + 50 len 14]) + (997 * _422):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _422 * mem[_472 + 18 len 14] / (1000 * mem[_472 + 50 len 14]) + (997 * _422)
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
            if mem[ceil32(return_data.size) + 96] < 1:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] < cd[36]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            mem[mem[64] + 4] = address(('cd', 68)[0])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 68)[0]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_470] == bool(mem[_470])
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(s):
                        _876 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _892 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_892 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_892 + 36] = 0
                            mem[_892 + 68] = _876
                            mem[_892 + 100] = this.address
                            mem[_892 + 132] = 128
                            mem[_892 + 164] = mem[_892]
                            s = 0
                            while s < mem[_892]:
                                mem[_892 + s + 196] = mem[_892 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_892]) > mem[_892]:
                                mem[_892 + mem[_892] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _876, address(this.address), 128, mem[_892], mem[_892 + 196 len ceil32(mem[_892])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _940 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_940 + 36] = 0
                            mem[_940 + 68] = _876
                            mem[_940 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_940 + 132] = 128
                            mem[_940 + 164] = mem[_940]
                            s = 0
                            while s < mem[_940]:
                                mem[_940 + s + 196] = mem[_940 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_940]) > mem[_940]:
                                mem[_940 + mem[_940] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _876, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_940], mem[_940 + 196 len ceil32(mem[_940])]
                    else:
                        _877 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _893 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_893 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_893 + 36] = _877
                            mem[_893 + 68] = 0
                            mem[_893 + 100] = this.address
                            mem[_893 + 132] = 128
                            mem[_893 + 164] = mem[_893]
                            s = 0
                            while s < mem[_893]:
                                mem[_893 + s + 196] = mem[_893 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_893]) > mem[_893]:
                                mem[_893 + mem[_893] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _877, 0, address(this.address), 128, mem[_893], mem[_893 + 196 len ceil32(mem[_893])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _941 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_941 + 36] = _877
                            mem[_941 + 68] = 0
                            mem[_941 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_941 + 132] = 128
                            mem[_941 + 164] = mem[_941]
                            s = 0
                            while s < mem[_941]:
                                mem[_941 + s + 196] = mem[_941 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_941]) > mem[_941]:
                                mem[_941 + mem[_941] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _877, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_941], mem[_941 + 196 len ceil32(mem[_941])]
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        _878 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _894 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_894 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_894 + 36] = 0
                            mem[_894 + 68] = _878
                            mem[_894 + 100] = this.address
                            mem[_894 + 132] = 128
                            mem[_894 + 164] = mem[_894]
                            s = 0
                            while s < mem[_894]:
                                mem[_894 + s + 196] = mem[_894 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_894]) > mem[_894]:
                                mem[_894 + mem[_894] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _878, address(this.address), 128, mem[_894], mem[_894 + 196 len ceil32(mem[_894])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_942 + 36] = 0
                            mem[_942 + 68] = _878
                            mem[_942 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_942 + 132] = 128
                            mem[_942 + 164] = mem[_942]
                            s = 0
                            while s < mem[_942]:
                                mem[_942 + s + 196] = mem[_942 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_942]) > mem[_942]:
                                mem[_942 + mem[_942] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _878, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_942], mem[_942 + 196 len ceil32(mem[_942])]
                    else:
                        _879 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _895 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_895 + 36] = _879
                            mem[_895 + 68] = 0
                            mem[_895 + 100] = this.address
                            mem[_895 + 132] = 128
                            mem[_895 + 164] = mem[_895]
                            s = 0
                            while s < mem[_895]:
                                mem[_895 + s + 196] = mem[_895 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_895]) > mem[_895]:
                                mem[_895 + mem[_895] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _879, 0, address(this.address), 128, mem[_895], mem[_895 + 196 len ceil32(mem[_895])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _943 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_943 + 36] = _879
                            mem[_943 + 68] = 0
                            mem[_943 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_943 + 132] = 128
                            mem[_943 + 164] = mem[_943]
                            s = 0
                            while s < mem[_943]:
                                mem[_943 + s + 196] = mem[_943 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_943]) > mem[_943]:
                                mem[_943 + mem[_943] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _879, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_943], mem[_943 + 196 len ceil32(mem[_943])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ('cd', 68).length + 1] = call.data[calldata.size len 32 * ('cd', 68).length + 1]
            if 0 >= ('cd', 68).length + 1:
                revert with 'NH{q', 50
            mem[ceil32(return_data.size) + 128] = cd[4]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _423 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_474] == mem[_474 + 18 len 14]
                    require mem[_474 + 32] == mem[_474 + 50 len 14]
                    require mem[_474 + 64] == mem[_474 + 92 len 4]
                    if _423 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_474 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_474 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _423 and 997 > -1 / _423:
                            revert with 'NH{q', 17
                        if 997 * _423 and mem[_474 + 50 len 14] > -1 / 997 * _423:
                            revert with 'NH{q', 17
                        if mem[_474 + 18 len 14] and 1000 > -1 / mem[_474 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_474 + 18 len 14] > (-997 * _423) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_474 + 18 len 14]) + (997 * _423):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _423 * mem[_474 + 50 len 14] / (1000 * mem[_474 + 18 len 14]) + (997 * _423)
                    else:
                        if mem[_474 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_474 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _423 and 997 > -1 / _423:
                            revert with 'NH{q', 17
                        if 997 * _423 and mem[_474 + 18 len 14] > -1 / 997 * _423:
                            revert with 'NH{q', 17
                        if mem[_474 + 50 len 14] and 1000 > -1 / mem[_474 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_474 + 50 len 14] > (-997 * _423) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_474 + 50 len 14]) + (997 * _423):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _423 * mem[_474 + 18 len 14] / (1000 * mem[_474 + 50 len 14]) + (997 * _423)
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((64 * idx) + cd[68] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _475 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_475] == mem[_475 + 18 len 14]
                    require mem[_475 + 32] == mem[_475 + 50 len 14]
                    require mem[_475 + 64] == mem[_475 + 92 len 4]
                    if _423 <= 0:
                        revert with 0, 'SwapLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        if mem[_475 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_475 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _423 and 997 > -1 / _423:
                            revert with 'NH{q', 17
                        if 997 * _423 and mem[_475 + 50 len 14] > -1 / 997 * _423:
                            revert with 'NH{q', 17
                        if mem[_475 + 18 len 14] and 1000 > -1 / mem[_475 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_475 + 18 len 14] > (-997 * _423) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_475 + 18 len 14]) + (997 * _423):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _423 * mem[_475 + 50 len 14] / (1000 * mem[_475 + 18 len 14]) + (997 * _423)
                    else:
                        if mem[_475 + 50 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_475 + 18 len 14] <= 0:
                            revert with 0, 'SwapLibrary: INSUFFICIENT_LIQUIDITY'
                        if _423 and 997 > -1 / _423:
                            revert with 'NH{q', 17
                        if 997 * _423 and mem[_475 + 18 len 14] > -1 / 997 * _423:
                            revert with 'NH{q', 17
                        if mem[_475 + 50 len 14] and 1000 > -1 / mem[_475 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * mem[_475 + 50 len 14] > (-997 * _423) - 1:
                            revert with 'NH{q', 17
                        if not (1000 * mem[_475 + 50 len 14]) + (997 * _423):
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + ceil32(return_data.size) + 128] = 997 * _423 * mem[_475 + 18 len 14] / (1000 * mem[_475 + 50 len 14]) + (997 * _423)
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
            if mem[ceil32(return_data.size) + 96] < 1:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] < cd[36]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            mem[mem[64] + 4] = address(('cd', 68)[0])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 68)[0]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _473 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_473] == bool(mem[_473])
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                    revert with 0, 'SwapLibrary: IDENTICAL_ADDRESSES'
                if address(s) < address(cd[((64 * idx) + cd[68] + 68)]):
                    if not address(s):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(s):
                        _880 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _896 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_896 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_896 + 36] = 0
                            mem[_896 + 68] = _880
                            mem[_896 + 100] = this.address
                            mem[_896 + 132] = 128
                            mem[_896 + 164] = mem[_896]
                            s = 0
                            while s < mem[_896]:
                                mem[_896 + s + 196] = mem[_896 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_896]) > mem[_896]:
                                mem[_896 + mem[_896] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _880, address(this.address), 128, mem[_896], mem[_896 + 196 len ceil32(mem[_896])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_944 + 36] = 0
                            mem[_944 + 68] = _880
                            mem[_944 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_944 + 132] = 128
                            mem[_944 + 164] = mem[_944]
                            s = 0
                            while s < mem[_944]:
                                mem[_944 + s + 196] = mem[_944 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_944]) > mem[_944]:
                                mem[_944 + mem[_944] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _880, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_944], mem[_944 + 196 len ceil32(mem[_944])]
                    else:
                        _881 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _897 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_897 + 36] = _881
                            mem[_897 + 68] = 0
                            mem[_897 + 100] = this.address
                            mem[_897 + 132] = 128
                            mem[_897 + 164] = mem[_897]
                            s = 0
                            while s < mem[_897]:
                                mem[_897 + s + 196] = mem[_897 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_897]) > mem[_897]:
                                mem[_897 + mem[_897] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _881, 0, address(this.address), 128, mem[_897], mem[_897 + 196 len ceil32(mem[_897])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _945 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_945 + 36] = _881
                            mem[_945 + 68] = 0
                            mem[_945 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_945 + 132] = 128
                            mem[_945 + 164] = mem[_945]
                            s = 0
                            while s < mem[_945]:
                                mem[_945 + s + 196] = mem[_945 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_945]) > mem[_945]:
                                mem[_945 + mem[_945] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _881, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_945], mem[_945 + 196 len ceil32(mem[_945])]
                else:
                    if not address(cd[((64 * idx) + cd[68] + 68)]):
                        revert with 0, 'SwapLibrary: ZERO_ADDRESS'
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if address(s) == address(cd[((64 * idx) + cd[68] + 68)]):
                        _882 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _898 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_898 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_898 + 36] = 0
                            mem[_898 + 68] = _882
                            mem[_898 + 100] = this.address
                            mem[_898 + 132] = 128
                            mem[_898 + 164] = mem[_898]
                            s = 0
                            while s < mem[_898]:
                                mem[_898 + s + 196] = mem[_898 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_898]) > mem[_898]:
                                mem[_898 + mem[_898] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _882, address(this.address), 128, mem[_898], mem[_898 + 196 len ceil32(mem[_898])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_946 + 36] = 0
                            mem[_946 + 68] = _882
                            mem[_946 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_946 + 132] = 128
                            mem[_946 + 164] = mem[_946]
                            s = 0
                            while s < mem[_946]:
                                mem[_946 + s + 196] = mem[_946 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_946]) > mem[_946]:
                                mem[_946 + mem[_946] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _882, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_946], mem[_946 + 196 len ceil32(mem[_946])]
                    else:
                        _883 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _899 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_899 + 36] = _883
                            mem[_899 + 68] = 0
                            mem[_899 + 100] = this.address
                            mem[_899 + 132] = 128
                            mem[_899 + 164] = mem[_899]
                            s = 0
                            while s < mem[_899]:
                                mem[_899 + s + 196] = mem[_899 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_899]) > mem[_899]:
                                mem[_899 + mem[_899] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _883, 0, address(this.address), 128, mem[_899], mem[_899 + 196 len ceil32(mem[_899])]
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx + 1) + cd[68] + 36)] == address(cd[((64 * idx + 1) + cd[68] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            _947 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_947 + 36] = _883
                            mem[_947 + 68] = 0
                            mem[_947 + 100] = address(cd[((64 * idx + 1) + cd[68] + 36)])
                            mem[_947 + 132] = 128
                            mem[_947 + 164] = mem[_947]
                            s = 0
                            while s < mem[_947]:
                                mem[_947 + s + 196] = mem[_947 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_947]) > mem[_947]:
                                mem[_947 + mem[_947] + 196] = 0
                            require ext_code.size(address(cd[((64 * idx) + cd[68] + 36)]))
                            call address(cd[((64 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _883, 0, address(cd[((64 * idx + 1) + cd[68] + 36)]), 128, mem[_947], mem[_947 + 196 len ceil32(mem[_947])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[68] + 68)] == address(cd[((64 * idx) + cd[68] + 68)])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = cd[((64 * idx) + cd[68] + 68)]
                continue 
    return 1
}



}
