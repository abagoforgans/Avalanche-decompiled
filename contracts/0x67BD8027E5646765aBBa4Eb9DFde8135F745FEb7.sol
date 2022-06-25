contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0ab92d99(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function sendTokens(address[] arg1, uint256[] arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not owner'
    if arg1.length != arg2.length:
        revert with 0, 'Invalid input'
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        _61 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg2 + 36)]
        _62 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_62 + 32] = mem[_62 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _61 + 196
        mem[_61 + 132] = 32
        mem[_61 + 164] = 'SafeERC20: low-level call failed'
        if ext_code.hash(stor1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(stor1):
            revert with 0, 'Address: call to non-contract'
        _68 = mem[_62]
        u = _62 + 32
        v = _61 + 196
        t = mem[_62]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_61 + floor32(mem[_62]) + 196] = mem[_62 + -(mem[_62] % 32) + floor32(mem[_62]) + 64 len mem[_62] % 32] or Mask(8 * -(mem[_62] % 32) + 32, -(8 * -(mem[_62] % 32) + 32) + 256, mem[_61 + floor32(mem[_62]) + 196])
        call stor1.mem[_61 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_61 + 200 len _68 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_61 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_61 + 200] = 32
                mem[_61 + 232] = 32
                idx = 0
                while idx < 32:
                    mem[_61 + idx + 264] = mem[_61 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _61 + -mem[64] + 296
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_61 + 306 len 22]
        else:
            mem[64] = _61 + ceil32(return_data.size) + 197
            mem[_61 + 196] = return_data.size
            mem[_61 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_61 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_61 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[_61 + ceil32(return_data.size) + idx + 265] = mem[_61 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_61 + ceil32(return_data.size) + 265]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_61 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_61 + ceil32(return_data.size) + 307 len 22]
        require uint8(idx) < arg2.length
        if s + cd[((32 * uint8(idx)) + arg2 + 36)] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + cd[((32 * uint8(idx)) + arg2 + 36)]
        continue 
    emit 0x9fe55f3a: address(arg3), s, block.timestamp
}



}
