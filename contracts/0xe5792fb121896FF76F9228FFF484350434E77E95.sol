contract main {




// =====================  Runtime code  =====================


#
#  - sub_04ad1e53(?)
#  - sub_4b95de13(?)
#  - sub_690d3114(?)
#  - sub_f241ffb0(?)
#
address stor0;

function _fallback() payable {
    revert
}

function getERC721TokenOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        return 0
    return ext_call.return_data[12 len 20]
}

function sub_2cd0fc73(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    _3 = mem[128]
    if arg2.length < 36:
        revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
    _6 = mem[132]
    mem[ceil32(arg2.length) + 132] = Mask(32, 224, mem[128])
    require ext_code.size(stor0)
    call stor0.0x60704108 with:
         gas gas_remaining wei
        args Mask(32, 224, _3)
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, sha3('ERC20Token(address)')) == Mask(32, 224, _3):
        require ext_code.size(address(_6))
        call address(_6).0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_6))
        call address(_6).0xdd62ed3e with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[4 len 28])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], ext_call.return_data[0]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 'ERC721Token(address,uint256)'
    if Mask(32, 224, sha3('ERC721Token(address,uint256)')) != Mask(32, 224, _3):
        revert with 0, 'UNSUPPORTED_ASSET_PROXY'
    if arg2.length < 68:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    staticcall address(_6).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args mem[164]
    if not ext_call.success:
        if not arg1:
            require ext_code.size(address(_6))
            call address(_6).isApprovedForAll(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[4 len 28])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1, 1
            require ext_code.size(address(_6))
            call address(_6).getApproved(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[4 len 28]):
                return 1, 1
            return 1, 0
    else:
        if arg1 == address(ext_call.return_data[0]):
            require ext_code.size(address(_6))
            call address(_6).isApprovedForAll(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[4 len 28])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return 1, 1
            require ext_code.size(address(_6))
            call address(_6).getApproved(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[4 len 28]):
                return 1, 1
            return 1, 0
    require ext_code.size(address(_6))
    call address(_6).isApprovedForAll(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[4 len 28])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0, 1
    require ext_code.size(address(_6))
    call address(_6).getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args mem[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(ext_call.return_data[4 len 28]):
        return 0, 1
    else:
        return 0
}

function sub_c6b7f4ee(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size > cd[36] + cd[s] + 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _211 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_211] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_211 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + _211 + 32] = 0
        mem[t] = _211
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _207 = mem[96]
    _208 = mem[64]
    if not mem[96]:
        _209 = mem[64] + (32 * mem[96]) + 32
        mem[mem[64] + (32 * mem[96]) + 32] = mem[96]
        mem[64] = mem[64] + (64 * mem[96]) + 64
        idx = 0
        while _207 != idx:
            require idx < mem[96]
            _415 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128]] < 4:
                revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
            _421 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128]] < 36:
                revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
            _428 = mem[mem[(32 * idx) + 128] + 36]
            mem[mem[64] + 4] = Mask(32, 224, mem[mem[(32 * idx) + 128] + 32])
            require ext_code.size(stor0)
            call stor0.0x60704108 with:
                 gas gas_remaining wei
                args Mask(32, 224, _421)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _449 = mem[_444]
            if Mask(32, 224, sha3('ERC20Token(address)')) == Mask(32, 224, _421):
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(_428))
                call address(_428).0x70a08231 with:
                     gas gas_remaining wei
                    args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _486 = mem[_482]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(_449)
                require ext_code.size(address(_428))
                call address(_428).0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(cd[4]), address(_449)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[_208]
                require idx < mem[_209]
                mem[_209 + (32 * idx) + 32] = mem[_518]
                mem[(32 * idx) + _208 + 32] = _486
            else:
                mem[mem[64]] = 'ERC721Token(address,uint256)'
                if Mask(32, 224, sha3('ERC721Token(address,uint256)')) != Mask(32, 224, _421):
                    revert with 0, 'UNSUPPORTED_ASSET_PROXY'
                if mem[_415] < 68:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                _470 = mem[_415 + 68]
                staticcall address(_428).ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_415 + 68]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(_449)
                require ext_code.size(address(_428))
                call address(_428).isApprovedForAll(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), address(_449)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if not address(cd[4]):
                        _506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_506]:
                            require idx < mem[_208]
                            require idx < mem[_209]
                            mem[_209 + (32 * idx) + 32] = 1
                        else:
                            mem[mem[64] + 4] = _470
                            require ext_code.size(address(_428))
                            call address(_428).getApproved(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _470
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require idx < mem[_208]
                            require idx < mem[_209]
                            if mem[_564 + 12 len 20] == address(_449):
                                mem[_209 + (32 * idx) + 32] = 1
                            else:
                                mem[_209 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _208 + 32] = 1
                    else:
                        _507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_507]:
                            require idx < mem[_208]
                            require idx < mem[_209]
                            mem[_209 + (32 * idx) + 32] = 1
                        else:
                            mem[mem[64] + 4] = _470
                            require ext_code.size(address(_428))
                            call address(_428).getApproved(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _470
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require idx < mem[_208]
                            require idx < mem[_209]
                            if mem[_565 + 12 len 20] == address(_449):
                                mem[_209 + (32 * idx) + 32] = 1
                            else:
                                mem[_209 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _208 + 32] = 0
                else:
                    if address(cd[4]) == address(ext_call.return_data[0]):
                        _510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_510]:
                            require idx < mem[_208]
                            require idx < mem[_209]
                            mem[_209 + (32 * idx) + 32] = 1
                        else:
                            mem[mem[64] + 4] = _470
                            require ext_code.size(address(_428))
                            call address(_428).getApproved(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _470
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require idx < mem[_208]
                            require idx < mem[_209]
                            if mem[_568 + 12 len 20] == address(_449):
                                mem[_209 + (32 * idx) + 32] = 1
                            else:
                                mem[_209 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _208 + 32] = 1
                    else:
                        _511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_511]:
                            require idx < mem[_208]
                            require idx < mem[_209]
                            mem[_209 + (32 * idx) + 32] = 1
                        else:
                            mem[mem[64] + 4] = _470
                            require ext_code.size(address(_428))
                            call address(_428).getApproved(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _470
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _569 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require idx < mem[_208]
                            require idx < mem[_209]
                            if mem[_569 + 12 len 20] == address(_449):
                                mem[_209 + (32 * idx) + 32] = 1
                            else:
                                mem[_209 + (32 * idx) + 32] = 0
                        mem[(32 * idx) + _208 + 32] = 0
            idx = idx + 1
            continue 
        _414 = mem[64]
        mem[mem[64]] = 64
        _420 = mem[_208]
        mem[mem[64] + 64] = mem[_208]
        mem[mem[64] + 96 len 32 * _420] = mem[_208 + 32 len 32 * _420]
        mem[mem[64] + 32] = (32 * _420) + 96
        _614 = mem[_209]
        mem[_414 + (32 * _420) + 96] = mem[_209]
        mem[_414 + (32 * _420) + 128 len 32 * _614] = mem[_209 + 32 len 32 * _614]
        return memory
          from mem[64]
           len _414 + (32 * _420) + (32 * _614) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * mem[96]] = code.data[7007 len 32 * mem[96]]
    mem[mem[64] + (32 * mem[96]) + 32] = mem[96]
    mem[64] = mem[64] + (64 * mem[96]) + 64
    mem[_208 + (32 * mem[96]) + 64 len 32 * mem[96]] = code.data[7007 len 32 * mem[96]]
    idx = 0
    while _207 != idx:
        require idx < mem[96]
        _417 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128]] < 4:
            revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
        _424 = mem[mem[(32 * idx) + 128] + 32]
        if mem[mem[(32 * idx) + 128]] < 36:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        _430 = mem[mem[(32 * idx) + 128] + 36]
        mem[mem[64] + 4] = Mask(32, 224, mem[mem[(32 * idx) + 128] + 32])
        require ext_code.size(stor0)
        call stor0.0x60704108 with:
             gas gas_remaining wei
            args Mask(32, 224, _424)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _451 = mem[_445]
        if Mask(32, 224, sha3('ERC20Token(address)')) == Mask(32, 224, _424):
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_430))
            call address(_430).0x70a08231 with:
                 gas gas_remaining wei
                args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _487 = mem[_485]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_451)
            require ext_code.size(address(_430))
            call address(_430).0xdd62ed3e with:
                 gas gas_remaining wei
                args address(cd[4]), address(_451)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _521 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[_208]
            require idx < mem[_208 + (32 * _207) + 32]
            mem[_208 + (32 * _207) + (32 * idx) + 64] = mem[_521]
            mem[(32 * idx) + _208 + 32] = _487
        else:
            mem[mem[64]] = 'ERC721Token(address,uint256)'
            if Mask(32, 224, sha3('ERC721Token(address,uint256)')) != Mask(32, 224, _424):
                revert with 0, 'UNSUPPORTED_ASSET_PROXY'
            if mem[_417] < 68:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            _472 = mem[_417 + 68]
            staticcall address(_430).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_417 + 68]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_451)
            require ext_code.size(address(_430))
            call address(_430).isApprovedForAll(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), address(_451)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if not address(cd[4]):
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_508]:
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                    else:
                        mem[mem[64] + 4] = _472
                        require ext_code.size(address(_430))
                        call address(_430).getApproved(uint256 arg1) with:
                             gas gas_remaining wei
                            args _472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        if mem[_566 + 12 len 20] == address(_451):
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                        else:
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _208 + 32] = 1
                else:
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_509]:
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                    else:
                        mem[mem[64] + 4] = _472
                        require ext_code.size(address(_430))
                        call address(_430).getApproved(uint256 arg1) with:
                             gas gas_remaining wei
                            args _472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _567 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        if mem[_567 + 12 len 20] == address(_451):
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                        else:
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _208 + 32] = 0
            else:
                if address(cd[4]) == address(ext_call.return_data[0]):
                    _513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_513]:
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                    else:
                        mem[mem[64] + 4] = _472
                        require ext_code.size(address(_430))
                        call address(_430).getApproved(uint256 arg1) with:
                             gas gas_remaining wei
                            args _472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _570 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        if mem[_570 + 12 len 20] == address(_451):
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                        else:
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _208 + 32] = 1
                else:
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_514]:
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                    else:
                        mem[mem[64] + 4] = _472
                        require ext_code.size(address(_430))
                        call address(_430).getApproved(uint256 arg1) with:
                             gas gas_remaining wei
                            args _472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _571 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_208]
                        require idx < mem[_208 + (32 * _207) + 32]
                        if mem[_571 + 12 len 20] == address(_451):
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 1
                        else:
                            mem[_208 + (32 * _207) + (32 * idx) + 64] = 0
                    mem[(32 * idx) + _208 + 32] = 0
        idx = idx + 1
        continue 
    _416 = mem[64]
    mem[mem[64]] = 64
    _423 = mem[_208]
    mem[mem[64] + 64] = mem[_208]
    mem[mem[64] + 96 len 32 * _423] = mem[_208 + 32 len 32 * _423]
    mem[mem[64] + 32] = (32 * _423) + 96
    _615 = mem[_208 + (32 * _207) + 32]
    mem[_416 + (32 * _423) + 96] = mem[_208 + (32 * _207) + 32]
    mem[_416 + (32 * _423) + 128 len 32 * _615] = mem[_208 + (32 * _207) + 64 len 32 * _615]
    return memory
      from mem[64]
       len _416 + (32 * _423) + (32 * _615) + -mem[64] + 128
}



}
