contract main {




// =====================  Runtime code  =====================


address owner;
address UNISWAP_ROUTER_ADDRESS;
address wBNBAddress;
mapping of uint8 stor3;

function sub_151ec721(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function UNISWAP_ROUTER_ADDRESS() {
    return UNISWAP_ROUTER_ADDRESS
}

function owner() {
    return owner
}

function wBNB() {
    return wBNBAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ca4cec88(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function setNativeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    wBNBAddress = arg1
    return 1
}

function setSandwichRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    UNISWAP_ROUTER_ADDRESS = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_84b2b2d6(?) {
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
    return 1
}

function sub_3bbeadd4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Not in whitelist'
    if wBNBAddress == address(arg2):
        mem[128] = address(arg2)
        mem[160] = address(arg1)
        mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[228] = 128
        mem[324] = 2
        idx = 0
        s = 356
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[260] = msg.sender
        mem[292] = arg3
        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
        call UNISWAP_ROUTER_ADDRESS.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, msg.sender, arg3, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32
    else:
        mem[128] = wBNBAddress
        mem[160] = address(arg2)
        mem[192] = address(arg1)
        mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[228] = 0
        mem[260] = 128
        mem[356] = 3
        idx = 0
        s = 388
        t = 128
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = msg.sender
        mem[324] = arg3
        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
        call UNISWAP_ROUTER_ADDRESS.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, msg.sender, arg3, 3, mem[388 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x79b36943(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x79b36943(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return UNISWAP_ROUTER_ADDRESS
            if uint32(call.func_hash) >> 224 != unknown_0x84b2b2d6(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xca4cec88(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor3[address(arg1)] = 1
                else:
                    if unknown_0xd02eb3f4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return wBNBAddress
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
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
            return 1
        if setSandwichRouter(address arg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            UNISWAP_ROUTER_ADDRESS = address(arg1)
            return 1
        if unknown_0x151ec721(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return bool(stor3[arg1])
        if uint32(call.func_hash) >> 224 != unknown_0x3bbeadd4(?????):
            if unknown_0x6da1e102(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                wBNBAddress = address(arg1)
                return 1
            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            emit OwnershipTransferred(owner, 0);
            owner = 0
        else:
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if bool(stor3[msg.sender]) != 1:
                revert with 0, 'Not in whitelist'
            if wBNBAddress == address(arg2):
                mem[160] = address(arg2)
                mem[192] = address(arg1)
                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[260] = 128
                mem[356] = 2
                idx = 0
                s = 388
                t = 160
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[292] = msg.sender
                mem[324] = arg3
                require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                call UNISWAP_ROUTER_ADDRESS.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, arg3, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                require mem[224 len 4], 0 <= test266151307()
                require mem[224 len 4], 0 + 255 < return_data.size + 224
                if mem[mem[224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32
            else:
                mem[160] = wBNBAddress
                mem[192] = address(arg2)
                mem[224] = address(arg1)
                mem[256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[260] = 0
                mem[292] = 128
                mem[388] = 3
                idx = 0
                s = 420
                t = 160
                while idx < 3:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[324] = msg.sender
                mem[356] = arg3
                require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                call UNISWAP_ROUTER_ADDRESS.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, arg3, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 256
                require return_data.size >= 32
                require mem[256 len 4], 0 <= test266151307()
                require mem[256 len 4], 0 + 287 < return_data.size + 256
                if mem[mem[256 len 4], 0 + 256] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], 0 + 256]) + 257 > test266151307() or ceil32(32 * mem[mem[256 len 4], 0 + 256]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32
}



}
