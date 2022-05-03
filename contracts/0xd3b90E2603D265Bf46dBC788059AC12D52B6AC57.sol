contract main {




// =====================  Runtime code  =====================


#
#  - unlock(bytes arg1, bytes arg2, uint64 arg3)
#  - lock(address arg1, uint64 arg2, bytes arg3, uint256 arg4)
#
address owner;
address managerProxyContractAddress;
array of uint256 proxyHashMap;
array of uint256 assetHashMap;

function assetHashMap(address arg1, uint64 arg2) {
    return assetHashMap[arg1][arg2][0 len assetHashMap[arg1][arg2].length]
}

function owner() {
    return owner
}

function proxyHashMap(uint64 arg1) {
    return proxyHashMap[arg1][0 len proxyHashMap[arg1].length]
}

function managerProxyContract() {
    return managerProxyContractAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setManagerProxy(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    managerProxyContractAddress = arg1
    emit SetManagerProxyEvent(arg1);
}

function getBalanceFor(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function bindProxyHash(uint64 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    proxyHashMap[arg1 << 192][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit BindProxyEvent(uint64 arg1, bytes arg2):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                            arg2.length,
                            Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit BindProxyEvent(uint64 arg1, bytes arg2):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                            arg2.length,
                            Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                            mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function bindAssetHash(address arg1, uint64 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    assetHashMap[address(arg1)][arg2 << 192][] = Array(len=arg3.length, data=arg3[all])
    if not arg1:
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        emit BindAssetEvent(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Array(len=arg3.length, data=arg3[all]), eth.balance(this.address));
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit BindAssetEvent(address arg1, uint64 arg2, bytes arg3, uint256 arg4):
                            0,
                            uint128(arg1) << 96,
                            arg2 << 192,
                            128,
                            ext_call.return_data[0],
                            arg3.length,
                            Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        emit BindAssetEvent(address arg1, uint64 arg2, bytes arg3, uint256 arg4):
                            0,
                            uint128(arg1) << 96,
                            arg2 << 192,
                            128,
                            ext_call.return_data[0],
                            arg3.length,
                            Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                            mem[(2 * ceil32(arg3.length)) + 288 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
    return 0, 1
}



}
