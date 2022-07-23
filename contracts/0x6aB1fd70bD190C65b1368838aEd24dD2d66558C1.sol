contract main {




// =====================  Runtime code  =====================


const sub_dbc77d4d(?) = eth.balance(this.address)


address owner;
address stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_be7b14f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
}

function sub_0a2ca3ec(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
    stor2 = arg2
}

function sub_7bc6c369(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8d07c9d1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor1, stor2, ext_call.return_data[0], stor3
}

function sub_08ba3f42(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3e5c342e(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'nb'
    mem[ceil32(return_data.size) + 100] = stor3
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = stor4
    if not uint8(arg1):
        mem[(2 * ceil32(return_data.size)) + 160] = stor1
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = stor2
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 388
        t = (2 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = owner
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], stor2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
    else:
        if 1 == uint8(arg1):
            mem[(2 * ceil32(return_data.size)) + 160] = stor5
            mem[(2 * ceil32(return_data.size)) + 192] = stor1
            mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = stor2
            mem[(2 * ceil32(return_data.size)) + 292] = 160
            mem[(2 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 420
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 3:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = owner
            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
            require ext_code.size(stor3)
            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], stor2, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
        else:
            if 2 == uint8(arg1):
                mem[(2 * ceil32(return_data.size)) + 160] = stor6
                mem[(2 * ceil32(return_data.size)) + 192] = stor1
                mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 260] = stor2
                mem[(2 * ceil32(return_data.size)) + 292] = 160
                mem[(2 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 420
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 3:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 324] = owner
                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], stor2, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
            else:
                if uint8(arg1) != 3:
                    mem[(2 * ceil32(return_data.size)) + 160] = stor1
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = stor2
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = owner
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], stor2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
                else:
                    mem[(2 * ceil32(return_data.size)) + 160] = stor7
                    mem[(2 * ceil32(return_data.size)) + 192] = stor1
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 260] = stor2
                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                    mem[(2 * ceil32(return_data.size)) + 388] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 420
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 3:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 324] = owner
                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], stor2, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8d07c9d1(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x8d07c9d1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return stor1, stor2, ext_call.return_data[0], stor3
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xbe7b14f9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor3 = address(arg1)
            else:
                if unknown_0xdbc77d4d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(arg1)
                emit OwnershipTransferred(owner, address(arg1));
        else:
            if unknown_0x08ba3f42(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x0a2ca3ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor1 = address(arg1)
                    stor2 = arg2
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x3e5c342e(?????):
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            require unknown_0x7bc6c369(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == uint8(arg1)
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'nb'
                        mem[ceil32(return_data.size) + 132] = stor3
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 160] = stor4
                        if not uint8(arg1):
                            mem[(2 * ceil32(return_data.size)) + 192] = stor1
                            mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 260] = stor2
                            mem[(2 * ceil32(return_data.size)) + 292] = 160
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 420
                            t = (2 * ceil32(return_data.size)) + 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = owner
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], stor2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), owner, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
                        else:
                            if 1 == uint8(arg1):
                                mem[(2 * ceil32(return_data.size)) + 192] = stor5
                                mem[(2 * ceil32(return_data.size)) + 224] = stor1
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + 292] = stor2
                                mem[(2 * ceil32(return_data.size)) + 324] = 160
                                mem[(2 * ceil32(return_data.size)) + 420] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 452
                                t = (2 * ceil32(return_data.size)) + 160
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 356] = owner
                                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                require ext_code.size(stor3)
                                call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], stor2, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 452 len 96]), owner, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 256
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32
                            else:
                                if 2 == uint8(arg1):
                                    mem[(2 * ceil32(return_data.size)) + 192] = stor6
                                    mem[(2 * ceil32(return_data.size)) + 224] = stor1
                                    mem[(2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + 292] = stor2
                                    mem[(2 * ceil32(return_data.size)) + 324] = 160
                                    mem[(2 * ceil32(return_data.size)) + 420] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 452
                                    t = (2 * ceil32(return_data.size)) + 160
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 356] = owner
                                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                    require ext_code.size(stor3)
                                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], stor2, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 452 len 96]), owner, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 256
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32
                                else:
                                    if uint8(arg1) != 3:
                                        mem[(2 * ceil32(return_data.size)) + 192] = stor1
                                        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + 260] = stor2
                                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 420
                                        t = (2 * ceil32(return_data.size)) + 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 324] = owner
                                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                                        require ext_code.size(stor3)
                                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], stor2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), owner, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 224
                                        require return_data.size >= 32
                                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                            revert with 0, 65
                                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 192] = stor7
                                        mem[(2 * ceil32(return_data.size)) + 224] = stor1
                                        mem[(2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + 292] = stor2
                                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                                        mem[(2 * ceil32(return_data.size)) + 420] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 452
                                        t = (2 * ceil32(return_data.size)) + 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 356] = owner
                                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                        require ext_code.size(stor3)
                                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], stor2, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 452 len 96]), owner, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 256
                                        require return_data.size >= 32
                                        require mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 1 < 0:
                                            revert with 0, 65
                                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32
}



}
