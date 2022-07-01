contract main {




// =====================  Runtime code  =====================


#
#  - cancelStream(uint256 arg1)
#  - withdrawFromStream(uint256 arg1, uint256 arg2)
#
uint256 nextStreamId;
mapping of struct stream;

function nextStreamId() payable {
    return nextStreamId
}

function getStream(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stream[arg1].field_1952:
        revert with 0, 'stream does not exist'
    return stream[arg1].field_1536, 
           stream[arg1].field_1280,
           stream[arg1].field_0,
           stream[arg1].field_1792,
           stream[arg1].field_768,
           stream[arg1].field_1024,
           stream[arg1].field_512,
           stream[arg1].field_256
}

function _fallback() payable {
    revert
}

function deltaOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stream[arg1].field_1952:
        revert with 0, 'stream does not exist'
    if block.timestamp <= stream[arg1].field_768:
        return 0
    if block.timestamp >= stream[arg1].field_1024:
        return (stream[arg1].field_1024 - stream[arg1].field_768)
    return (block.timestamp - stream[arg1].field_768)
}

function createStream(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not arg1:
        revert with 0, 'stream to the zero address'
    if this.address == arg1:
        revert with 0, 'stream to the contract itself'
    if msg.sender == arg1:
        revert with 0, 'stream to the caller'
    if arg2 <= 0:
        revert with 0, 'deposit is zero'
    if arg4 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6573746172742074696d65206265666f726520626c6f636b2e74696d657374616d,
                    mem[197 len 31]
    if arg5 <= arg4:
        revert with 0, 'stop time before the start time'
    require arg4 <= arg5
    if arg2 < arg5 - arg4:
        revert with 0, 'deposit smaller than time delta'
    require arg5 - arg4
    if arg2 % arg5 - arg4:
        revert with 0, 32, 34, 0x706465706f736974206e6f74206d756c7469706c65206f662074696d652064656c74, mem[294 len 30]
    require arg5 - arg4
    stream[stor1].field_0 = arg2
    stream[stor1].field_256 = arg2 / arg5 - arg4
    stream[stor1].field_512 = arg2
    stream[stor1].field_768 = arg4
    stream[stor1].field_1024 = arg5
    stream[stor1].field_1280 = arg1
    stream[stor1].field_1536 = msg.sender
    stream[stor1].field_1792 = arg3
    stream[stor1].field_1952 = 1
    if nextStreamId + 1 < nextStreamId:
        nextStreamId = 0
        revert with 0, 'next stream id calculation error'
    nextStreamId++
    if not ext_code.size(arg3):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[736 len 4] = uint32(arg2)
    call arg3 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[708 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[644]:
                revert with 0, 
                            32,
                            42,
                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 723 len 22]
    emit CreateStream(arg2, address(arg3), arg4, arg5, nextStreamId, msg.sender, arg1);
    return nextStreamId
}

function balanceOf(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stream[arg1].field_1952:
        revert with 0, 'stream does not exist'
    if not stream[arg1].field_1952:
        revert with 0, 'stream does not exist'
    if block.timestamp <= stream[arg1].field_768:
        if stream[arg1].field_0 <= stream[arg1].field_512:
            if arg2 == stream[arg1].field_1280:
                return 0
            if arg2 != stream[arg1].field_1536:
                return 0
            require 0 <= stream[arg1].field_512
            return stream[arg1].field_512
        require stream[arg1].field_512 <= stream[arg1].field_0
        require stream[arg1].field_0 - stream[arg1].field_512 <= 0
        if arg2 == stream[arg1].field_1280:
            return (-stream[arg1].field_0 + stream[arg1].field_512)
        if arg2 != stream[arg1].field_1536:
            return 0
        require -stream[arg1].field_0 + stream[arg1].field_512 <= stream[arg1].field_512
        return stream[arg1].field_0
    if block.timestamp >= stream[arg1].field_1024:
        if not stream[arg1].field_1024 - stream[arg1].field_768:
            if stream[arg1].field_0 <= stream[arg1].field_512:
                if arg2 == stream[arg1].field_1280:
                    return 0
                if arg2 != stream[arg1].field_1536:
                    return 0
                require 0 <= stream[arg1].field_512
                return stream[arg1].field_512
            require stream[arg1].field_512 <= stream[arg1].field_0
            require stream[arg1].field_0 - stream[arg1].field_512 <= 0
            if arg2 == stream[arg1].field_1280:
                return (-stream[arg1].field_0 + stream[arg1].field_512)
            if arg2 != stream[arg1].field_1536:
                return 0
            require -stream[arg1].field_0 + stream[arg1].field_512 <= stream[arg1].field_512
            return stream[arg1].field_0
        if (stream[arg1].field_1024 * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) / stream[arg1].field_1024 - stream[arg1].field_768 != stream[arg1].field_256:
            revert with 0, 32, 35, 0x61726563697069656e742062616c616e63652063616c63756c6174696f6e206572726f, mem[1479 len 29]
        if stream[arg1].field_0 <= stream[arg1].field_512:
            if arg2 == stream[arg1].field_1280:
                return ((stream[arg1].field_1024 * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256))
            if arg2 != stream[arg1].field_1536:
                return 0
            require (stream[arg1].field_1024 * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) <= stream[arg1].field_512
            return (stream[arg1].field_512 - (stream[arg1].field_1024 * stream[arg1].field_256) + (stream[arg1].field_768 * stream[arg1].field_256))
        require stream[arg1].field_512 <= stream[arg1].field_0
        require stream[arg1].field_0 - stream[arg1].field_512 <= (stream[arg1].field_1024 * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256)
        if arg2 == stream[arg1].field_1280:
            return ((stream[arg1].field_1024 * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) - stream[arg1].field_0 + stream[arg1].field_512)
        if arg2 != stream[arg1].field_1536:
            return 0
        require (stream[arg1].field_1024 * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) - stream[arg1].field_0 + stream[arg1].field_512 <= stream[arg1].field_512
        return ((-1 * stream[arg1].field_1024 * stream[arg1].field_256) + (stream[arg1].field_768 * stream[arg1].field_256) + stream[arg1].field_0)
    if not block.timestamp - stream[arg1].field_768:
        if stream[arg1].field_0 <= stream[arg1].field_512:
            if arg2 == stream[arg1].field_1280:
                return 0
            if arg2 != stream[arg1].field_1536:
                return 0
            require 0 <= stream[arg1].field_512
            return stream[arg1].field_512
        require stream[arg1].field_512 <= stream[arg1].field_0
        require stream[arg1].field_0 - stream[arg1].field_512 <= 0
        if arg2 == stream[arg1].field_1280:
            return (-stream[arg1].field_0 + stream[arg1].field_512)
        if arg2 != stream[arg1].field_1536:
            return 0
        require -stream[arg1].field_0 + stream[arg1].field_512 <= stream[arg1].field_512
        return stream[arg1].field_0
    if (block.timestamp * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) / block.timestamp - stream[arg1].field_768 != stream[arg1].field_256:
        revert with 0, 32, 35, 0x61726563697069656e742062616c616e63652063616c63756c6174696f6e206572726f, mem[1479 len 29]
    if stream[arg1].field_0 <= stream[arg1].field_512:
        if arg2 == stream[arg1].field_1280:
            return ((block.timestamp * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256))
        if arg2 != stream[arg1].field_1536:
            return 0
        require (block.timestamp * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) <= stream[arg1].field_512
        return (stream[arg1].field_512 - (block.timestamp * stream[arg1].field_256) + (stream[arg1].field_768 * stream[arg1].field_256))
    require stream[arg1].field_512 <= stream[arg1].field_0
    require stream[arg1].field_0 - stream[arg1].field_512 <= (block.timestamp * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256)
    if arg2 == stream[arg1].field_1280:
        return ((block.timestamp * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) - stream[arg1].field_0 + stream[arg1].field_512)
    if arg2 != stream[arg1].field_1536:
        return 0
    require (block.timestamp * stream[arg1].field_256) - (stream[arg1].field_768 * stream[arg1].field_256) - stream[arg1].field_0 + stream[arg1].field_512 <= stream[arg1].field_512
    return ((-1 * block.timestamp * stream[arg1].field_256) + (stream[arg1].field_768 * stream[arg1].field_256) + stream[arg1].field_0)
}



}
