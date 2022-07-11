contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function kill() payable {
    if stor1 != msg.sender:
        revert with 0, 'Unauthorized Operation'
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function sub_e4e56989(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor1 != msg.sender:
        revert with 0, 'Unauthorized Operation (c)'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_52d3771c(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if stor1 != msg.sender:
        revert with 0, 'Nui 9'
    stor2 = address(cd[132])
    require ext_code.size(stor2)
    staticcall stor2.oracle() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor3 = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x74645ff300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    staticcall stor2.oracleData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307() or ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _10 + _11 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_11)] = mem[ceil32(return_data.size) + _10 + 128 len ceil32(_11)]
    if ceil32(_11) <= _11:
        _77 = mem[64]
        mem[mem[64]] = 0xd6d7d52500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _11
        mem[mem[64] + 68 len ceil32(_11)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_11)]
        if ceil32(_11) <= _11:
            require ext_code.size(stor3)
            call stor3.get(bytes arg1) with:
                 gas gas_remaining wei
                args Array(len=_11, data=mem[mem[64] + 68 len ceil32(_11)])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_213] == bool(mem[_213])
            require mem[_213 + 32] == mem[_213 + 32]
            if mem[_213 + 32] == cd[164]:
                revert with 0, 'ER'
            _225 = mem[64]
            mem[mem[64] + 4] = 128
            mem[mem[64] + 132] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = mem[64] + 164
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = (32 * ('cd', 4).length) + 160
            mem[mem[64] + (32 * ('cd', 4).length) + 164] = ('cd', 36).length
            require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + (32 * ('cd', 4).length) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 196] = 0
            mem[mem[64] + 68] = address(cd[68])
            mem[_225 + 100] = address(cd[100])
            require ext_code.size(stor2)
            call stor2.liquidate(address[] arg1, uint256[] arg2, address arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _225 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = this.address
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.balanceOf(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_345]
            require mem[_345] == mem[_345]
            if mem[_345] <= 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _369 = mem[_365]
                require mem[_365] == mem[_365]
                if mem[_365] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _369
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _369, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_401] == mem[_401]
                    require mem[_401 + 32] == mem[_401 + 32]
            else:
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = stor1
                mem[mem[64] + 100] = _349
                mem[mem[64] + 132] = 0
                require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
                call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor0, address(this.address), stor1, _349, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_381] == mem[_381]
                require mem[_381 + 32] == mem[_381 + 32]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _418 = mem[_413]
                require mem[_413] == mem[_413]
                if mem[_413] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _418
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _418, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_433] == mem[_433]
                    require mem[_433 + 32] == mem[_433 + 32]
        else:
            mem[mem[64] + _11 + 68] = 0
            require ext_code.size(stor3)
            call stor3.get(bytes arg1) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _77 + ceil32(_11) + -mem[64] + 64]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_215] == bool(mem[_215])
            require mem[_215 + 32] == mem[_215 + 32]
            if mem[_215 + 32] == cd[164]:
                revert with 0, 'ER'
            _229 = mem[64]
            mem[mem[64] + 4] = 128
            mem[mem[64] + 132] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = mem[64] + 164
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = (32 * ('cd', 4).length) + 160
            mem[mem[64] + (32 * ('cd', 4).length) + 164] = ('cd', 36).length
            require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + (32 * ('cd', 4).length) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 196] = 0
            mem[mem[64] + 68] = address(cd[68])
            mem[_229 + 100] = address(cd[100])
            require ext_code.size(stor2)
            call stor2.liquidate(address[] arg1, uint256[] arg2, address arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _229 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = this.address
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.balanceOf(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _350 = mem[_346]
            require mem[_346] == mem[_346]
            if mem[_346] <= 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _370 = mem[_366]
                require mem[_366] == mem[_366]
                if mem[_366] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _370
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _370, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_402] == mem[_402]
                    require mem[_402 + 32] == mem[_402 + 32]
            else:
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = stor1
                mem[mem[64] + 100] = _350
                mem[mem[64] + 132] = 0
                require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
                call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor0, address(this.address), stor1, _350, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_382] == mem[_382]
                require mem[_382 + 32] == mem[_382 + 32]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _420 = mem[_414]
                require mem[_414] == mem[_414]
                if mem[_414] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _420
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _420, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_434] == mem[_434]
                    require mem[_434 + 32] == mem[_434 + 32]
    else:
        mem[(2 * ceil32(return_data.size)) + _11 + 128] = 0
        _78 = mem[64]
        mem[mem[64]] = 0xd6d7d52500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _11
        mem[mem[64] + 68 len ceil32(_11)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_11)]
        if ceil32(_11) <= _11:
            require ext_code.size(stor3)
            call stor3.get(bytes arg1) with:
                 gas gas_remaining wei
                args Array(len=_11, data=mem[mem[64] + 68 len ceil32(_11)])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_214] == bool(mem[_214])
            require mem[_214 + 32] == mem[_214 + 32]
            if mem[_214 + 32] == cd[164]:
                revert with 0, 'ER'
            _227 = mem[64]
            mem[mem[64] + 4] = 128
            mem[mem[64] + 132] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = mem[64] + 164
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = (32 * ('cd', 4).length) + 160
            mem[mem[64] + (32 * ('cd', 4).length) + 164] = ('cd', 36).length
            require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + (32 * ('cd', 4).length) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 196] = 0
            mem[mem[64] + 68] = address(cd[68])
            mem[_227 + 100] = address(cd[100])
            require ext_code.size(stor2)
            call stor2.liquidate(address[] arg1, uint256[] arg2, address arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _227 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = this.address
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.balanceOf(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _351 = mem[_347]
            require mem[_347] == mem[_347]
            if mem[_347] <= 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _371 = mem[_367]
                require mem[_367] == mem[_367]
                if mem[_367] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _371
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _371, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _403 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_403] == mem[_403]
                    require mem[_403 + 32] == mem[_403 + 32]
            else:
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = stor1
                mem[mem[64] + 100] = _351
                mem[mem[64] + 132] = 0
                require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
                call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor0, address(this.address), stor1, _351, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_383] == mem[_383]
                require mem[_383 + 32] == mem[_383 + 32]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _422 = mem[_415]
                require mem[_415] == mem[_415]
                if mem[_415] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _422
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _422, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_435] == mem[_435]
                    require mem[_435 + 32] == mem[_435 + 32]
        else:
            mem[mem[64] + _11 + 68] = 0
            require ext_code.size(stor3)
            call stor3.get(bytes arg1) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _78 + ceil32(_11) + -mem[64] + 64]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_216] == bool(mem[_216])
            require mem[_216 + 32] == mem[_216 + 32]
            if mem[_216 + 32] == cd[164]:
                revert with 0, 'ER'
            _231 = mem[64]
            mem[mem[64] + 4] = 128
            mem[mem[64] + 132] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = mem[64] + 164
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = (32 * ('cd', 4).length) + 160
            mem[mem[64] + (32 * ('cd', 4).length) + 164] = ('cd', 36).length
            require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + (32 * ('cd', 4).length) + 196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 196] = 0
            mem[mem[64] + 68] = address(cd[68])
            mem[_231 + 100] = address(cd[100])
            require ext_code.size(stor2)
            call stor2.liquidate(address[] arg1, uint256[] arg2, address arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _231 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = this.address
            require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
            staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.balanceOf(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _352 = mem[_348]
            require mem[_348] == mem[_348]
            if mem[_348] <= 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _372 = mem[_368]
                require mem[_368] == mem[_368]
                if mem[_368] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _372
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _372, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_404] == mem[_404]
                    require mem[_404 + 32] == mem[_404 + 32]
            else:
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = stor1
                mem[mem[64] + 100] = _352
                mem[mem[64] + 132] = 0
                require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
                call 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor0, address(this.address), stor1, _352, 0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_384] == mem[_384]
                require mem[_384 + 32] == mem[_384 + 32]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                staticcall 0x1fc83f75499b7620d53757f0b01e2ae626aae530.balanceOf(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _424 = mem[_416]
                require mem[_416] == mem[_416]
                if mem[_416] > 0:
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = stor1
                    mem[mem[64] + 100] = _424
                    mem[mem[64] + 132] = 0
                    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
                    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor0, address(this.address), stor1, _424, 0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_436] == mem[_436]
                    require mem[_436 + 32] == mem[_436 + 32]
}



}
