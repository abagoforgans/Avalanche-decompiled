contract main {




// =====================  Runtime code  =====================


#
#  - oracleRequest(address arg1, uint256 arg2, bytes32 arg3, address arg4, bytes4 arg5, uint256 arg6, uint256 arg7, bytes arg8)
#  - chainlinkCallback(bytes32 arg1, int256 arg2)
#
address chainlinkTokenAddress;
mapping of address stor5;
address owner;
uint256 stor7;
array of struct stor8;
mapping of uint256 stor9;
mapping of struct stor10;
mapping of uint256 stor11;

function getChainlinkToken() payable {
    return chainlinkTokenAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function withdrawLink() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(chainlinkTokenAddress)
    staticcall chainlinkTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if chainlinkTokenAddress != msg.sender:
        revert with 0, 'Must use LINK token'
    if 68 > arg3.length:
        revert with 0, 'Invalid request length'
    if Mask(32, 224, mem[128]) != 0x4042994600000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Must use whitelisted functions'
    mem[132] = arg1
    mem[164] = arg2
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    delegate this.address with:
       funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not delegate.return_code:
        revert with 0, 'Unable to create request'
}

function cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    stor11[arg1] = 0
    stor9[arg1] = 0
    if not stor10[stor11[arg1]].field_512:
        if stor10[stor11[arg1]].field_32 != msg.sender:
            revert with 0, 'Only requester can cancel'
    else:
        idx = 384
        s = 0
        while (32 * stor10[stor11[arg1]].field_512) + 352 > idx:
            mem[idx + 32] = stor10[stor11[arg1]][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor10[stor11[arg1]].field_0 != msg.sender:
            revert with 0, 'Only requester can cancel'
    stor10[stor11[arg1]].field_0 = 0
    stor10[stor11[arg1]].field_256 = 0
    stor10[stor11[arg1]].field_512 = 0
    idx = 0
    while stor10[stor11[arg1]].field_512 > idx:
        stor10[stor11[arg1]][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    stor5[arg1] = 0
    emit ChainlinkCancelled(arg1);
    require ext_code.size(stor5[arg1])
    call stor5[arg1].0x6ee4d553 with:
         gas gas_remaining wei
        args arg1, arg2, Mask(32, 224, arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(chainlinkTokenAddress)
    call chainlinkTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor10[stor11[arg1]].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function createServiceAgreement(uint256 arg1, address[] arg2, bytes32[] arg3, uint256[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if arg1 <= 0:
        revert with 0, 'Min responses must be > 0'
    if arg3.length != arg2.length:
        revert with 0, 'Unmet length'
    if arg4.length != arg2.length:
        revert with 0, 'Unmet length'
    if arg2.length > 45:
        revert with 0, 'Cannot have more than 45 oracles'
    if arg2.length < arg1:
        revert with 0, 'Invalid min responses'
    idx = 0
    s = 0
    while idx < arg4.length:
        if cd[((32 * idx) + arg4 + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * idx) + arg4 + 36)] + s
        continue 
    stor7++
    mem[384 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 384] = arg3.length
    mem[(32 * arg2.length) + 416 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 416] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 448 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg4.length) + 448] = 0
    stor8[stor7][block.timestamp].field_0 = cd[((32 * arg4.length) + arg4 + 36)] * arg4.length
    stor8[stor7][block.timestamp].field_256 = arg1
    stor8[stor7][block.timestamp].field_512 = arg2.length
    if not arg2.length:
        idx = 0
        while stor8[stor7][block.timestamp].field_512 > idx:
            stor8[stor7][block.timestamp][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 384
        while (32 * arg2.length) + 384 > idx:
            stor8[stor7][block.timestamp][s + 2].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor8[stor7][block.timestamp].field_512 > idx:
            stor8[stor7][block.timestamp][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor8[stor7][block.timestamp].field_768 = arg3.length
    if not arg3.length:
        idx = 0
        while stor8[stor7][block.timestamp].field_768 > idx:
            stor8[stor7][block.timestamp][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 416
        while (32 * arg2.length) + (32 * arg3.length) + 416 > idx:
            stor8[stor7][block.timestamp][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor8[stor7][block.timestamp].field_768 > idx:
            stor8[stor7][block.timestamp][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor8[stor7][block.timestamp].field_1024 = arg4.length
    if not arg4.length:
        idx = 0
        while stor8[stor7][block.timestamp].field_1024 > idx:
            stor8[stor7][block.timestamp][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg3.length) + (32 * arg2.length) + 448
        while (32 * arg3.length) + (32 * arg2.length) + (32 * arg4.length) + 448 > idx:
            stor8[stor7][block.timestamp][s + 4].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor8[stor7][block.timestamp].field_1024 > idx:
            stor8[stor7][block.timestamp][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    emit NewServiceAgreement(cd[((32 * arg4.length) + arg4 + 36)] * arg4.length, arg1, sha3(stor7, block.timestamp));
    return sha3(stor7, block.timestamp)
}

function getServiceAgreement(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1].field_512:
        if not stor8[arg1].field_768:
            if stor8[arg1].field_1024:
                mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192] = stor8[arg1][4].field_0
                idx = (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192
                s = 0
                while (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 160 > idx:
                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 384 len floor32(stor8[arg1].field_512)] = mem[128 len floor32(stor8[arg1].field_512)]
            mem[(64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 384] = stor8[arg1].field_768
            mem[(64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 416 len floor32(stor8[arg1].field_768)] = mem[(32 * stor8[arg1].field_512) + 160 len floor32(stor8[arg1].field_768)]
            mem[(64 * stor8[arg1].field_768) + (64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_1024) + 416] = stor8[arg1].field_1024
            mem[(64 * stor8[arg1].field_768) + (64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_1024) + 448 len floor32(stor8[arg1].field_1024)] = mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192 len floor32(stor8[arg1].field_1024)]
            return stor8[arg1].field_0, 
                   stor8[arg1].field_256,
                   Array(len=stor8[arg1].field_512, data=mem[128 len floor32(stor8[arg1].field_512)], mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + floor32(stor8[arg1].field_512) + 384 len (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + -floor32(stor8[arg1].field_512) + 64]),
                   (32 * stor8[arg1].field_512) + 192,
                   (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_512) + 224
        mem[(32 * stor8[arg1].field_512) + 160] = stor8[arg1][3].field_0
        idx = (32 * stor8[arg1].field_512) + 160
        s = 0
        while (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 128 > idx:
            mem[idx + 32] = stor8[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[128] = stor8[arg1][2].field_0
        idx = 128
        s = 0
        while (32 * stor8[arg1].field_512) + 96 > idx:
            mem[idx + 32] = stor8[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor8[arg1].field_768:
            mem[(32 * stor8[arg1].field_512) + 160] = stor8[arg1][3].field_0
            idx = (32 * stor8[arg1].field_512) + 160
            s = 0
            while (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 128 > idx:
                mem[idx + 32] = stor8[arg1][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if not stor8[arg1].field_1024:
        mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 384 len floor32(stor8[arg1].field_512)] = mem[128 len floor32(stor8[arg1].field_512)]
        mem[(64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 384] = stor8[arg1].field_768
        mem[(64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 416 len floor32(stor8[arg1].field_768)] = mem[(32 * stor8[arg1].field_512) + 160 len floor32(stor8[arg1].field_768)]
        mem[(64 * stor8[arg1].field_768) + (64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_1024) + 416] = stor8[arg1].field_1024
        mem[(64 * stor8[arg1].field_768) + (64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_1024) + 448 len floor32(stor8[arg1].field_1024)] = mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192 len floor32(stor8[arg1].field_1024)]
        return stor8[arg1].field_0, 
               stor8[arg1].field_256,
               Array(len=stor8[arg1].field_512, data=mem[128 len floor32(stor8[arg1].field_512)], mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + floor32(stor8[arg1].field_512) + 384 len (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + -floor32(stor8[arg1].field_512) + 64]),
               (32 * stor8[arg1].field_512) + 192,
               (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_512) + 224
    mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192] = stor8[arg1][4].field_0
    idx = (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192
    s = 0
    while (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 160 > idx:
        mem[idx + 32] = stor8[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 384 len floor32(stor8[arg1].field_512)] = mem[128 len floor32(stor8[arg1].field_512)]
    mem[(64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 384] = stor8[arg1].field_768
    mem[(64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + 416 len floor32(stor8[arg1].field_768)] = mem[(32 * stor8[arg1].field_512) + 160 len floor32(stor8[arg1].field_768)]
    mem[(64 * stor8[arg1].field_768) + (64 * stor8[arg1].field_512) + (32 * stor8[arg1].field_1024) + 448 len floor32(stor8[arg1].field_1024)] = mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192 len floor32(stor8[arg1].field_1024)]
    return stor8[arg1].field_0, 
           stor8[arg1].field_256,
           Array(len=stor8[arg1].field_512, data=mem[128 len floor32(stor8[arg1].field_512)], mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + floor32(stor8[arg1].field_512) + 384 len (32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + -floor32(stor8[arg1].field_512) + 32], stor8[arg1].field_1024, mem[(32 * stor8[arg1].field_512) + (32 * stor8[arg1].field_768) + 192 len floor32(stor8[arg1].field_1024)], mem[(64 * stor8[arg1].field_512) + (64 * stor8[arg1].field_768) + (32 * stor8[arg1].field_1024) + floor32(stor8[arg1].field_1024) + 448 len (32 * stor8[arg1].field_1024) - floor32(stor8[arg1].field_1024)]),
           (32 * stor8[arg1].field_512) + 192,
           (32 * stor8[arg1].field_768) + (32 * stor8[arg1].field_512) + 224
}



}
