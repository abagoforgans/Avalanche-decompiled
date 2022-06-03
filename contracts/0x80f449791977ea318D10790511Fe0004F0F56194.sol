contract main {




// =====================  Runtime code  =====================


#
#  - matchOrders(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, address arg13, address arg14, address arg15, address arg16, uint256 arg17, uint256 arg18, uint256 arg19, uint256 arg20, uint256 arg21, uint256 arg22, bytes arg23, bytes arg24, bytes arg25, bytes arg26)
#
function _fallback() payable {
    revert
}

function sub_2e9cd033(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 384
    require ('cd', 4)[9] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[9] + 35
    require cd[(cd[4] + ('cd', 4)[9] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 512 >= 480 and ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 512 <= test266151307()
    mem[480] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + cd[(cd[4] + ('cd', 4)[9] + 4)] + 36 <= calldata.size
    mem[512 len cd[(cd[4] + ('cd', 4)[9] + 4)]] = call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]]
    require ('cd', 4)[10] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[10] + 35
    require cd[(cd[4] + ('cd', 4)[10] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 544 >= 512 and ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 544 <= test266151307()
    require cd[4] + ('cd', 4)[10] + cd[(cd[4] + ('cd', 4)[10] + 4)] + 36 <= calldata.size
    mem[448] = ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 512
    if cd[(cd[4] + ('cd', 4)[9] + 4)] < 100:
        revert with 0, 'INVALID_ASSET_DATA'
    if cd[(cd[4] + ('cd', 4)[9] + 4)] < cd[(cd[4] + ('cd', 4)[9] + 4)] - 32:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    if cd[(cd[4] + ('cd', 4)[9] + 4)] < cd[(cd[4] + ('cd', 4)[9] + 4)]:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    if ('cd', 4)[7] <= mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]:
        revert with 0, 'INVALID_BEGIN_TIME'
    if mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480] <= ('cd', 4)[4]:
        revert with 0, 'INVALID_AMOUNT'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 544] = mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + 576] = ('cd', 4)[7]
    if block.timestamp < mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[10] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)])],
               ('cd', 4)[7],
               mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480],
               ('cd', 4)[4],
               mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480],
               block.timestamp
    if block.timestamp >= ('cd', 4)[7]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[10] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)])],
               ('cd', 4)[7],
               mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480],
               ('cd', 4)[4],
               ('cd', 4)[4],
               block.timestamp
    if not ('cd', 4)[7] - block.timestamp:
        require ('cd', 4)[7] - mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]
        if (0 / ('cd', 4)[7] - mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]) + ('cd', 4)[4] < ('cd', 4)[4]:
            revert with 0, 'UINT256_OVERFLOW'
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[10] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)])],
               ('cd', 4)[7],
               mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480],
               ('cd', 4)[4],
               (0 / ('cd', 4)[7] - mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]) + ('cd', 4)[4],
               block.timestamp
    if (('cd', 4)[7] * mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480]) - (block.timestamp * mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480]) - (('cd', 4)[7] * ('cd', 4)[4]) + (block.timestamp * ('cd', 4)[4]) / ('cd', 4)[7] - block.timestamp != mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480] - ('cd', 4)[4]:
        revert with 0, 'UINT256_OVERFLOW'
    require ('cd', 4)[7] - mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]
    if ((('cd', 4)[7] * mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480]) - (block.timestamp * mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480]) - (('cd', 4)[7] * ('cd', 4)[4]) + (block.timestamp * ('cd', 4)[4]) / ('cd', 4)[7] - mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]) + ('cd', 4)[4] < ('cd', 4)[4]:
        revert with 0, 'UINT256_OVERFLOW'
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 32, 0, 0), 
           mem[ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + cd[(cd[4] + ('cd', 4)[10] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[10] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[10] + 4)])],
           ('cd', 4)[7],
           mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480],
           ('cd', 4)[4],
           ((('cd', 4)[7] * mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480]) - (block.timestamp * mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 480]) - (('cd', 4)[7] * ('cd', 4)[4]) + (block.timestamp * ('cd', 4)[4]) / ('cd', 4)[7] - mem[cd[(cd[4] + ('cd', 4)[9] + 4)] + 448]) + ('cd', 4)[4],
           block.timestamp
}



}
