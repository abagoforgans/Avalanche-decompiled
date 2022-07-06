contract main {




// =====================  Runtime code  =====================


#
#  - sub_18978e82(?)
#  - sub_9395525c(?)
#
address owner;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DEFAULT_FUNCTION_WETH_CONTRACT_ONLY'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require calldata.size > arg5 + 35
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 192 >= 160 and (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function withdrawAsset(bytes arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    _4 = mem[128]
    mem[ceil32(arg1.length) + 128] = 'ERC20Token(address)'
    if Mask(32, 224, sha3('ERC20Token(address)')) == Mask(32, 224, _4):
        if arg1.length < 36:
            revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
        mem[ceil32(arg1.length) + 228 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, arg2, mem[ceil32(arg1.length) + 228 len 28]
        mem[ceil32(arg1.length) + 292] = mem[ceil32(arg1.length) + 320 len 4]
        call mem[144 len 20].mem[ceil32(arg1.length) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + 232 len 92]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
        else:
            if return_data.size != 32:
                revert with 0, 'TRANSFER_FAILED'
            if not ext_call.return_data[0]:
                revert with 0, 'TRANSFER_FAILED'
    else:
        mem[ceil32(arg1.length) + 128] = 'ERC721Token(address,uint256)'
        if Mask(32, 224, sha3('ERC721Token(address,uint256)')) == Mask(32, 224, _4):
            if arg2 != 1:
                revert with 0, 'INVALID_AMOUNT'
            if arg1.length < 36:
                revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
            if arg1.length < 68:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            require ext_code.size(mem[144 len 20])
            call mem[144 len 20].0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, mem[164]
        else:
            if Mask(32, 224, sha3('ERC1155Assets(address,uint256[],', 'uint256[],bytes)')) != Mask(32, 224, _4):
                revert with 0, 'UNSUPPORTED_ASSET_PROXY'
            mem[ceil32(arg1.length) + 128] = 0
            mem[ceil32(arg1.length) + 160] = 0
            mem[ceil32(arg1.length) + 192] = 0
            mem[ceil32(arg1.length) + 256] = 96
            mem[ceil32(arg1.length) + 288] = 96
            mem[ceil32(arg1.length) + 320] = 96
            if arg1.length < 36:
                revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
            mem[ceil32(arg1.length) + 128] = mem[144 len 20]
            mem[ceil32(arg1.length) + 352] = 0
            mem[ceil32(arg1.length) + 224] = ceil32(arg1.length) + 352
            if arg1.length < 164:
                revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
            if 228 == arg1.length:
                mem[ceil32(arg1.length) + 160] = mem[260]
                if arg1.length < 196:
                    revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                mem[ceil32(arg1.length) + 192] = mem[292]
                mem[ceil32(arg1.length) + 384] = 1
                mem[ceil32(arg1.length) + 256] = ceil32(arg1.length) + 384
                mem[ceil32(arg1.length) + 416] = mem[ceil32(arg1.length) + 160]
                mem[ceil32(arg1.length) + 448] = 1
                mem[ceil32(arg1.length) + 288] = ceil32(arg1.length) + 448
                mem[ceil32(arg1.length) + 480] = mem[ceil32(arg1.length) + 192]
                mem[ceil32(arg1.length) + 512] = 1
                mem[64] = ceil32(arg1.length) + 576
                mem[ceil32(arg1.length) + 544] = code.data[9803 len 32]
                mem[ceil32(arg1.length) + 320] = ceil32(arg1.length) + 512
                idx = 0
                while idx != 1:
                    require idx < mem[mem[ceil32(arg1.length) + 288]]
                    require idx < mem[mem[ceil32(arg1.length) + 320]]
                    mem[mem[ceil32(arg1.length) + 320] + (32 * idx) + 32] = mem[(32 * idx) + mem[ceil32(arg1.length) + 288] + 32] * arg2
                    idx = idx + 1
                    continue 
                _246 = mem[ceil32(arg1.length) + 128]
                _247 = mem[ceil32(arg1.length) + 256]
                _248 = mem[ceil32(arg1.length) + 320]
                _249 = mem[ceil32(arg1.length) + 224]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 160
                _343 = mem[_247]
                mem[mem[64] + 164] = mem[_247]
                mem[mem[64] + 196 len 32 * _343] = mem[_247 + 32 len 32 * _343]
                mem[mem[64] + 100] = (32 * _343) + 192
                _436 = mem[_248]
                mem[mem[64] + (32 * _343) + 196] = mem[_248]
                mem[mem[64] + (32 * _343) + 228 len 32 * _436] = mem[_248 + 32 len 32 * _436]
                mem[mem[64] + 132] = (32 * _343) + (32 * _436) + 224
                _490 = mem[_249]
                mem[mem[64] + (32 * _343) + (32 * _436) + 228] = mem[_249]
                mem[mem[64] + (32 * _343) + (32 * _436) + 260 len ceil32(_490)] = mem[_249 + 32 len ceil32(_490)]
                if ceil32(_490) > _490:
                    mem[_490 + mem[64] + (32 * _343) + (32 * _436) + 260] = 0
                require ext_code.size(address(_246))
                call address(_246).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, 160, (32 * _343) + 192, (32 * _343) + (32 * _436) + 224, mem[mem[64] + 164 len (32 * _343) + (32 * _436) + ceil32(_490) + 96]
            else:
                _43 = mem[260]
                mem[ceil32(arg1.length) + 384] = mem[260]
                if not mem[260]:
                    mem[ceil32(arg1.length) + 256] = ceil32(arg1.length) + 384
                    mem[ceil32(arg1.length) + (32 * _43) + 416] = _43
                    mem[64] = ceil32(arg1.length) + (64 * _43) + 448
                    mem[ceil32(arg1.length) + 288] = ceil32(arg1.length) + (32 * _43) + 416
                    idx = 0
                    while idx < _43:
                        if mem[96] < (32 * idx) + 196:
                            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                        _264 = mem[(32 * idx) + 292]
                        mem[ceil32(arg1.length) + 160] = mem[(32 * idx) + 292]
                        require idx < mem[mem[ceil32(arg1.length) + 256]]
                        mem[mem[ceil32(arg1.length) + 256] + (32 * idx) + 32] = _264
                        if mem[96] < (32 * _43) + (32 * idx + 1) + 196:
                            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                        _329 = mem[(32 * _43) + (32 * idx + 1) + 292]
                        mem[ceil32(arg1.length) + 192] = mem[(32 * _43) + (32 * idx + 1) + 292]
                        require idx < mem[mem[ceil32(arg1.length) + 288]]
                        mem[mem[ceil32(arg1.length) + 288] + (32 * idx) + 32] = _329
                        idx = idx + 1
                        continue 
                    _234 = mem[mem[ceil32(arg1.length) + 288]]
                    _235 = mem[64]
                    mem[mem[64]] = mem[mem[ceil32(arg1.length) + 288]]
                    mem[64] = mem[64] + (32 * _234) + 32
                    if not _234:
                        mem[ceil32(arg1.length) + 320] = _235
                        idx = 0
                        while _234 != idx:
                            require idx < mem[mem[ceil32(arg1.length) + 288]]
                            require idx < mem[mem[ceil32(arg1.length) + 320]]
                            mem[mem[ceil32(arg1.length) + 320] + (32 * idx) + 32] = mem[(32 * idx) + mem[ceil32(arg1.length) + 288] + 32] * arg2
                            idx = idx + 1
                            continue 
                        _393 = mem[ceil32(arg1.length) + 128]
                        _394 = mem[ceil32(arg1.length) + 256]
                        _395 = mem[ceil32(arg1.length) + 320]
                        _396 = mem[ceil32(arg1.length) + 224]
                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 160
                        _439 = mem[_394]
                        mem[mem[64] + 164] = mem[_394]
                        mem[mem[64] + 196 len 32 * _439] = mem[_394 + 32 len 32 * _439]
                        mem[mem[64] + 100] = (32 * _439) + 192
                        _485 = mem[_395]
                        mem[mem[64] + (32 * _439) + 196] = mem[_395]
                        mem[mem[64] + (32 * _439) + 228 len 32 * _485] = mem[_395 + 32 len 32 * _485]
                        mem[mem[64] + 132] = (32 * _439) + (32 * _485) + 224
                        _523 = mem[_396]
                        mem[mem[64] + (32 * _439) + (32 * _485) + 228] = mem[_396]
                        mem[mem[64] + (32 * _439) + (32 * _485) + 260 len ceil32(_523)] = mem[_396 + 32 len ceil32(_523)]
                        if ceil32(_523) > _523:
                            mem[_523 + mem[64] + (32 * _439) + (32 * _485) + 260] = 0
                        require ext_code.size(address(_393))
                        call address(_393).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 160, (32 * _439) + 192, (32 * _439) + (32 * _485) + 224, mem[mem[64] + 164 len (32 * _439) + (32 * _485) + ceil32(_523) + 96]
                    else:
                        mem[_235 + 32 len 32 * _234] = code.data[9803 len 32 * _234]
                        mem[ceil32(arg1.length) + 320] = _235
                        idx = 0
                        while _234 != idx:
                            require idx < mem[mem[ceil32(arg1.length) + 288]]
                            require idx < mem[mem[ceil32(arg1.length) + 320]]
                            mem[mem[ceil32(arg1.length) + 320] + (32 * idx) + 32] = mem[(32 * idx) + mem[ceil32(arg1.length) + 288] + 32] * arg2
                            idx = idx + 1
                            continue 
                        _400 = mem[ceil32(arg1.length) + 128]
                        _401 = mem[ceil32(arg1.length) + 256]
                        _402 = mem[ceil32(arg1.length) + 320]
                        _403 = mem[ceil32(arg1.length) + 224]
                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 160
                        _440 = mem[_401]
                        mem[mem[64] + 164] = mem[_401]
                        mem[mem[64] + 196 len 32 * _440] = mem[_401 + 32 len 32 * _440]
                        mem[mem[64] + 100] = (32 * _440) + 192
                        _486 = mem[_402]
                        mem[mem[64] + (32 * _440) + 196] = mem[_402]
                        mem[mem[64] + (32 * _440) + 228 len 32 * _486] = mem[_402 + 32 len 32 * _486]
                        mem[mem[64] + 132] = (32 * _440) + (32 * _486) + 224
                        _524 = mem[_403]
                        mem[mem[64] + (32 * _440) + (32 * _486) + 228] = mem[_403]
                        mem[mem[64] + (32 * _440) + (32 * _486) + 260 len ceil32(_524)] = mem[_403 + 32 len ceil32(_524)]
                        if ceil32(_524) > _524:
                            mem[_524 + mem[64] + (32 * _440) + (32 * _486) + 260] = 0
                        require ext_code.size(address(_400))
                        call address(_400).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 160, (32 * _440) + 192, (32 * _440) + (32 * _486) + 224, mem[mem[64] + 164 len (32 * _440) + (32 * _486) + ceil32(_524) + 96]
                else:
                    mem[ceil32(arg1.length) + 416 len 32 * mem[260]] = code.data[9803 len 32 * mem[260]]
                    mem[ceil32(arg1.length) + 256] = ceil32(arg1.length) + 384
                    mem[ceil32(arg1.length) + (32 * _43) + 416] = _43
                    mem[64] = ceil32(arg1.length) + (64 * _43) + 448
                    mem[ceil32(arg1.length) + (32 * _43) + 448 len 32 * _43] = code.data[9803 len 32 * _43]
                    mem[ceil32(arg1.length) + 288] = ceil32(arg1.length) + (32 * _43) + 416
                    idx = 0
                    while idx < _43:
                        if mem[96] < (32 * idx) + 196:
                            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                        _266 = mem[(32 * idx) + 292]
                        mem[ceil32(arg1.length) + 160] = mem[(32 * idx) + 292]
                        require idx < mem[mem[ceil32(arg1.length) + 256]]
                        mem[mem[ceil32(arg1.length) + 256] + (32 * idx) + 32] = _266
                        if mem[96] < (32 * _43) + (32 * idx + 1) + 196:
                            revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
                        _331 = mem[(32 * _43) + (32 * idx + 1) + 292]
                        mem[ceil32(arg1.length) + 192] = mem[(32 * _43) + (32 * idx + 1) + 292]
                        require idx < mem[mem[ceil32(arg1.length) + 288]]
                        mem[mem[ceil32(arg1.length) + 288] + (32 * idx) + 32] = _331
                        idx = idx + 1
                        continue 
                    _237 = mem[mem[ceil32(arg1.length) + 288]]
                    _238 = mem[64]
                    mem[mem[64]] = mem[mem[ceil32(arg1.length) + 288]]
                    mem[64] = mem[64] + (32 * _237) + 32
                    if not _237:
                        mem[ceil32(arg1.length) + 320] = _238
                        idx = 0
                        while _237 != idx:
                            require idx < mem[mem[ceil32(arg1.length) + 288]]
                            require idx < mem[mem[ceil32(arg1.length) + 320]]
                            mem[mem[ceil32(arg1.length) + 320] + (32 * idx) + 32] = mem[(32 * idx) + mem[ceil32(arg1.length) + 288] + 32] * arg2
                            idx = idx + 1
                            continue 
                        _407 = mem[ceil32(arg1.length) + 128]
                        _408 = mem[ceil32(arg1.length) + 256]
                        _409 = mem[ceil32(arg1.length) + 320]
                        _410 = mem[ceil32(arg1.length) + 224]
                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 160
                        _441 = mem[_408]
                        mem[mem[64] + 164] = mem[_408]
                        mem[mem[64] + 196 len 32 * _441] = mem[_408 + 32 len 32 * _441]
                        mem[mem[64] + 100] = (32 * _441) + 192
                        _487 = mem[_409]
                        mem[mem[64] + (32 * _441) + 196] = mem[_409]
                        mem[mem[64] + (32 * _441) + 228 len 32 * _487] = mem[_409 + 32 len 32 * _487]
                        mem[mem[64] + 132] = (32 * _441) + (32 * _487) + 224
                        _525 = mem[_410]
                        mem[mem[64] + (32 * _441) + (32 * _487) + 228] = mem[_410]
                        mem[mem[64] + (32 * _441) + (32 * _487) + 260 len ceil32(_525)] = mem[_410 + 32 len ceil32(_525)]
                        if ceil32(_525) > _525:
                            mem[_525 + mem[64] + (32 * _441) + (32 * _487) + 260] = 0
                        require ext_code.size(address(_407))
                        call address(_407).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 160, (32 * _441) + 192, (32 * _441) + (32 * _487) + 224, mem[mem[64] + 164 len (32 * _441) + (32 * _487) + ceil32(_525) + 96]
                    else:
                        mem[_238 + 32 len 32 * _237] = code.data[9803 len 32 * _237]
                        mem[ceil32(arg1.length) + 320] = _238
                        idx = 0
                        while _237 != idx:
                            require idx < mem[mem[ceil32(arg1.length) + 288]]
                            require idx < mem[mem[ceil32(arg1.length) + 320]]
                            mem[mem[ceil32(arg1.length) + 320] + (32 * idx) + 32] = mem[(32 * idx) + mem[ceil32(arg1.length) + 288] + 32] * arg2
                            idx = idx + 1
                            continue 
                        _414 = mem[ceil32(arg1.length) + 128]
                        _415 = mem[ceil32(arg1.length) + 256]
                        _416 = mem[ceil32(arg1.length) + 320]
                        _417 = mem[ceil32(arg1.length) + 224]
                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 160
                        _442 = mem[_415]
                        mem[mem[64] + 164] = mem[_415]
                        mem[mem[64] + 196 len 32 * _442] = mem[_415 + 32 len 32 * _442]
                        mem[mem[64] + 100] = (32 * _442) + 192
                        _488 = mem[_416]
                        mem[mem[64] + (32 * _442) + 196] = mem[_416]
                        mem[mem[64] + (32 * _442) + 228 len 32 * _488] = mem[_416 + 32 len 32 * _488]
                        mem[mem[64] + 132] = (32 * _442) + (32 * _488) + 224
                        _526 = mem[_417]
                        mem[mem[64] + (32 * _442) + (32 * _488) + 228] = mem[_417]
                        mem[mem[64] + (32 * _442) + (32 * _488) + 260 len ceil32(_526)] = mem[_417 + 32 len ceil32(_526)]
                        if ceil32(_526) > _526:
                            mem[_526 + mem[64] + (32 * _442) + (32 * _488) + 260] = 0
                        require ext_code.size(address(_414))
                        call address(_414).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 160, (32 * _442) + 192, (32 * _442) + (32 * _488) + 224, mem[mem[64] + 164 len (32 * _442) + (32 * _488) + ceil32(_526) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
