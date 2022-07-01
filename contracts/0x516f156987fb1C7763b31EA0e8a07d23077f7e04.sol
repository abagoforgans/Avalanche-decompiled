contract main {




// =====================  Runtime code  =====================


#
#  - registerChain(bytes arg1)
#  - sub_c6878519(?)
#  - transferNFT(address arg1, uint256 arg2, uint16 arg3, bytes32 arg4, uint32 arg5)
#  - sub_e6a853e0(?)
#
address wormholeAddress;
address implementationAddress;
uint16 chainId;
uint16 governanceChainId; offset 16
uint256 governanceContract;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of address wrappedAsset;
mapping of uint8 stor8;
mapping of uint256 bridgeContracts;
mapping of struct splCache;
address stor3608;

function isWrappedAsset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function wrappedAsset(uint16 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return wrappedAsset[arg1 << 240][arg2]
}

function governanceActionIsConsumed(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function tokenImplementation() {
    return implementationAddress
}

function splCache(uint256 arg1) {
    require calldata.size - 4 >= 32
    return splCache[arg1].field_0, splCache[arg1].field_256
}

function implementation() {
    return implementationAddress
}

function wormhole() {
    return wormholeAddress
}

function chainId() {
    return chainId
}

function isTransferCompleted(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function bridgeContracts(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bridgeContracts[arg1 << 240]
}

function governanceContract() {
    return governanceContract
}

function isInitialized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function governanceChainId() {
    return governanceChainId
}

function _fallback() payable {
    revert
}

function initialize() {
    if stor6[stor3608]:
        revert with 0, 'already initialized'
    stor6[stor3608] = 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only bridge tokens via transferNFT method'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function parseUpgrade(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    if arg1.length < 32:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    if mem[ceil32(ceil32(arg1.length)) + 97] != 'NFTBridge':
        revert with 0, 'invalid UpgradeContract: wrong module'
    if arg1.length < 33:
        revert with 0, 'toUint8_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 129] = mem[160 len 1]
    if mem[ceil32(ceil32(arg1.length)) + 160 len 1] != 2:
        revert with 0, 'invalid UpgradeContract: wrong action'
    if arg1.length < 35:
        revert with 0, 'toUint16_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 161] = mem[161 len 2]
    if arg1.length < 67:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 193] = mem[163]
    if arg1.length != 67:
        revert with 0, 'invalid UpgradeContract: wrong length'
    mem[ceil32(ceil32(arg1.length)) + 257] = mem[ceil32(ceil32(arg1.length)) + 160 len 1]
    mem[ceil32(ceil32(arg1.length)) + 289] = mem[ceil32(ceil32(arg1.length)) + 191 len 2]
    return mem[ceil32(ceil32(arg1.length)) + 97], 
           mem[ceil32(ceil32(arg1.length)) + 257 len 64],
           mem[ceil32(ceil32(arg1.length)) + 193]
}

function parseRegisterChain(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    if arg1.length < 32:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    if mem[ceil32(ceil32(arg1.length)) + 97] != 'NFTBridge':
        revert with 0, 'invalid RegisterChain: wrong module'
    if arg1.length < 33:
        revert with 0, 'toUint8_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 129] = mem[160 len 1]
    if mem[ceil32(ceil32(arg1.length)) + 160 len 1] != 1:
        revert with 0, 'invalid RegisterChain: wrong action'
    if arg1.length < 35:
        revert with 0, 'toUint16_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 161] = mem[161 len 2]
    if arg1.length < 37:
        revert with 0, 'toUint16_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 193] = mem[163 len 2]
    if arg1.length < 69:
        revert with 0, 'toBytes32_outOfBounds'
    if arg1.length != 69:
        revert with 0, 'invalid RegisterChain: wrong length'
    mem[ceil32(ceil32(arg1.length)) + 289] = mem[ceil32(ceil32(arg1.length)) + 160 len 1]
    mem[ceil32(ceil32(arg1.length)) + 321] = mem[ceil32(ceil32(arg1.length)) + 191 len 2]
    mem[ceil32(ceil32(arg1.length)) + 353] = mem[ceil32(ceil32(arg1.length)) + 223 len 2]
    return mem[ceil32(ceil32(arg1.length)) + 97], mem[ceil32(ceil32(arg1.length)) + 289 len 96], mem[165]
}

function parseTransfer(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(ceil32(arg1.length)) + 353
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    mem[ceil32(ceil32(arg1.length)) + 225] = 0
    mem[ceil32(ceil32(arg1.length)) + 257] = 96
    mem[ceil32(ceil32(arg1.length)) + 289] = 0
    mem[ceil32(ceil32(arg1.length)) + 321] = 0
    if arg1.length < 1:
        revert with 0, 'toUint8_outOfBounds'
    if mem[128 len 1] != 1:
        revert with 0, 'invalid Transfer'
    if arg1.length < 33:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[129]
    if arg1.length < 35:
        revert with 0, 'toUint16_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 129] = mem[161 len 2]
    if arg1.length < 67:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 161] = mem[163]
    if arg1.length < 99:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 193] = mem[195]
    if arg1.length < 131:
        revert with 0, 'toUint256_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 225] = mem[227]
    if arg1.length < 132:
        revert with 0, 17
    if arg1.length - 132 < 34:
        revert with 0, 17
    if 31 > !(arg1.length - 166):
        revert with 0, 17
    if 132 > !(arg1.length - 166):
        revert with 0, 17
    if arg1.length < arg1.length - 34:
        revert with 0, 'slice_outOfBounds'
    if not arg1.length - 166:
        mem[64] = ceil32(ceil32(arg1.length)) + 385
        if arg1.length < 2:
            revert with 0, 17
        if 2 > !(arg1.length - 2):
            revert with 0, 17
        if arg1.length < arg1.length:
            revert with 0, 'toUint16_outOfBounds'
        mem[ceil32(ceil32(arg1.length)) + 321] = mem[arg1.length + 126 len 2]
        if arg1.length - 2 < 32:
            revert with 0, 17
        if 32 > !(arg1.length - 34):
            revert with 0, 17
        if arg1.length < arg1.length - 2:
            revert with 0, 'toBytes32_outOfBounds'
        return 32, mem[ceil32(ceil32(arg1.length)) + 97], 
               mem[ceil32(ceil32(arg1.length)) + 159 len 2],
               mem[ceil32(ceil32(arg1.length)) + 161],
               mem[ceil32(ceil32(arg1.length)) + 193],
               mem[ceil32(ceil32(arg1.length)) + 225],
               256,
               mem[arg1.length + 94],
               mem[ceil32(ceil32(arg1.length)) + 351 len 2],
               0
    mem[ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + 353 len floor32(arg1.length - 135)] = mem[(arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + 228 len floor32(arg1.length - 135)]
    mem[ceil32(ceil32(arg1.length)) + 353] = arg1.length - 166
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384)
    mem[ceil32(ceil32(arg1.length)) + 257] = ceil32(ceil32(arg1.length)) + 353
    if arg1.length < 2:
        revert with 0, 17
    if 2 > !(arg1.length - 2):
        revert with 0, 17
    if arg1.length < arg1.length:
        revert with 0, 'toUint16_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 321] = mem[arg1.length + 126 len 2]
    if arg1.length - 2 < 32:
        revert with 0, 17
    if 32 > !(arg1.length - 34):
        revert with 0, 17
    if arg1.length < arg1.length - 2:
        revert with 0, 'toBytes32_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 289] = mem[arg1.length + 94]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384)] = 32
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 32] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 64] = mem[ceil32(ceil32(arg1.length)) + 159 len 2]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 96] = mem[ceil32(ceil32(arg1.length)) + 161]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 128] = mem[ceil32(ceil32(arg1.length)) + 193]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 160] = mem[ceil32(ceil32(arg1.length)) + 225]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 192] = 256
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 288] = arg1.length - 166
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 320 len floor32(arg1.length - 135)] = mem[ceil32(ceil32(arg1.length)) + 385 len floor32(arg1.length - 135)]
    if floor32(arg1.length - 135) > arg1.length - 166:
        mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + arg1.length + 154] = 0
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 224] = mem[ceil32(ceil32(arg1.length)) + 289]
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 256] = mem[ceil32(ceil32(arg1.length)) + 351 len 2]
    return 32, mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 32 len 160], 
           256,
           mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 224 len 64],
           arg1.length - 166,
           mem[floor32(ceil32(ceil32(arg1.length)) + (arg1.length - 166 % 32) + (32 * not arg1.length - 166 % 32) + floor32(arg1.length - 135) + 384) + 320 len floor32(arg1.length - 135)]
}

function upgrade(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    mem[ceil32(ceil32(arg1.length)) + 225] = 0
    mem[ceil32(ceil32(arg1.length)) + 257] = 0
    mem[ceil32(ceil32(arg1.length)) + 289] = 0
    mem[ceil32(ceil32(arg1.length)) + 321] = 96
    mem[ceil32(ceil32(arg1.length)) + 353] = 0
    mem[ceil32(ceil32(arg1.length)) + 385] = 96
    mem[ceil32(ceil32(arg1.length)) + 417] = 0
    mem[ceil32(ceil32(arg1.length)) + 449] = 0xc0fd8bde00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + 453] = 32
    mem[ceil32(ceil32(arg1.length)) + 485] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + 517 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(wormholeAddress)
        staticcall wormholeAddress.0xc0fd8bde with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg1.length)) + 449 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        _909 = mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0
        require mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 <= test266151307()
        require return_data.size - mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 >= 352
        if not bool(ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801 <= test266151307()):
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801
        require mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 + 449] == mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 + 480 len 1]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 + 449]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 481] == mem[ceil32(ceil32(arg1.length)) + _909 + 509 len 4]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481] = mem[ceil32(ceil32(arg1.length)) + _909 + 481]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 513] == mem[ceil32(ceil32(arg1.length)) + _909 + 541 len 4]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 513] = mem[ceil32(ceil32(arg1.length)) + _909 + 513]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 545] == mem[ceil32(ceil32(arg1.length)) + _909 + 575 len 2]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 545] = mem[ceil32(ceil32(arg1.length)) + _909 + 545]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] = mem[ceil32(ceil32(arg1.length)) + _909 + 577]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 609] == mem[ceil32(ceil32(arg1.length)) + _909 + 633 len 8]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 609] = mem[ceil32(ceil32(arg1.length)) + _909 + 609]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 641] == mem[ceil32(ceil32(arg1.length)) + _909 + 672 len 1]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 641] = mem[ceil32(ceil32(arg1.length)) + _909 + 641]
        _927 = mem[ceil32(ceil32(arg1.length)) + _909 + 673]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 673] <= test266151307()
        require ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
        _929 = mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 449]
        if mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 449] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 449])) + 353 < 352 or ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 449])) + 802 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 449])) + 802
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801] = mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 673] + 449]
        require _909 + _927 + _929 + 32 <= return_data.size
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 833 len ceil32(_929)] = mem[ceil32(ceil32(arg1.length)) + _909 + _927 + 481 len ceil32(_929)]
        if ceil32(_929) <= _929:
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801
            require mem[ceil32(ceil32(arg1.length)) + _909 + 705] == mem[ceil32(ceil32(arg1.length)) + _909 + 733 len 4]
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 705] = mem[ceil32(ceil32(arg1.length)) + _909 + 705]
            _1809 = mem[ceil32(ceil32(arg1.length)) + _909 + 737]
            require mem[ceil32(ceil32(arg1.length)) + _909 + 737] <= test266151307()
            require ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
            _1813 = mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]
            if mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449] > test266151307():
                revert with 0, 65
            _1817 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]) + 1
            mem[_1817] = mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]
            require _909 + _1809 + (_1813 << 7) + 32 <= return_data.size
            idx = 0
            s = ceil32(ceil32(arg1.length)) + _909 + _1809 + 481
            t = _1817 + 32
            while idx < _1813:
                require ceil32(ceil32(arg1.length)) + return_data.size + -s + 449 >= 128
                _2678 = mem[64]
                if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 128
                mem[_2678] = mem[s]
                mem[_2678 + 32] = mem[s + 32]
                require mem[s + 64] == mem[s + 95 len 1]
                mem[_2678 + 64] = mem[s + 64]
                require mem[s + 96] == mem[s + 127 len 1]
                mem[_2678 + 96] = mem[s + 96]
                mem[t] = _2678
                idx = idx + 1
                s = s + 128
                t = t + 32
                continue 
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 737] = _1817
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769] = mem[ceil32(ceil32(arg1.length)) + _909 + 769]
            _2677 = mem[ceil32(ceil32(arg1.length)) + 481]
            require mem[ceil32(ceil32(arg1.length)) + 481] == bool(mem[ceil32(ceil32(arg1.length)) + 481])
            _2685 = mem[ceil32(ceil32(arg1.length)) + 513]
            require mem[ceil32(ceil32(arg1.length)) + 513] <= test266151307()
            require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
            _2701 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
            if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449] > test266151307():
                revert with 0, 65
            _2709 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1
            mem[_2709] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
            require _2685 + _2701 + 32 <= return_data.size
            mem[_2709 + 32 len ceil32(_2701)] = mem[ceil32(ceil32(arg1.length)) + _2685 + 481 len ceil32(_2701)]
            if ceil32(_2701) <= _2701:
                if not _2677:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _2701
                    mem[mem[64] + 68 len ceil32(_2701)] = mem[_2709 + 32 len ceil32(_2701)]
                    if ceil32(_2701) > _2701:
                        mem[mem[64] + _2701 + 68] = 0
                    revert with 0, 32, _2701, mem[mem[64] + 68 len ceil32(_2701)]
                if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
                    revert with 0, 'wrong govern', 0
                if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
                    revert with 0, 'wrong governance contract', 0
                mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
                mem[32] = 4
                if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
                    _3566 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3566] = 34
                    mem[_3566 + 32 len 34] = code.data[15136 len 34]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 34
                    mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3566 + 66 len 30]
                    revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
                _3565 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3565] = 0
                mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
                mem[32] = 4
                stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
                _3641 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
                _3665 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3665] = 0
                mem[_3665 + 32] = 0
                mem[_3665 + 64] = 0
                mem[_3665 + 96] = 0
                if mem[_3641] < 32:
                    revert with 0, 'toBytes32_outOfBounds'
                mem[_3665] = mem[_3641 + 32]
                if mem[_3665] != 'NFTBridge':
                    revert with 0, 'invalid UpgradeContract: wrong module'
                if mem[_3641] < 33:
                    revert with 0, 'toUint8_outOfBounds'
                mem[_3665 + 32] = mem[_3641 + 64 len 1]
                if mem[_3665 + 63 len 1] != 2:
                    revert with 0, 'invalid UpgradeContract: wrong action'
                if mem[_3641] < 35:
                    revert with 0, 'toUint16_outOfBounds'
                mem[_3665 + 64] = mem[_3641 + 65 len 2]
                if mem[_3641] < 67:
                    revert with 0, 'toBytes32_outOfBounds'
                mem[_3665 + 96] = mem[_3641 + 67]
                if mem[_3641] != 67:
                    revert with 0, 'invalid UpgradeContract: wrong length'
                if mem[_3665 + 94 len 2] != chainId:
                    revert with 0, 'wrong chain id'
                _3989 = mem[_3665 + 96]
                if not ext_code.size(mem[_3665 + 96]):
                    revert with 0, 'ERC1967: new implementation is not a contract'
                stor3608 = mem[_3665 + 108 len 20]
                emit Upgraded(mem[_3665 + 108 len 20]);
                _4033 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4033 + 32 len 4] = unknown_0x8129fc1c(?????)
                mem[_4033 + 36 len ceil32(mem[_4033])] = mem[_4033 + 32 len ceil32(mem[_4033])]
                if ceil32(mem[_4033]) <= mem[_4033]:
                    delegate address(_3989).0x0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_4033] + _4033 + -mem[64] + 32]
                    if not return_data.size:
                        if delegate.return_code:
                            emit ContractUpgraded(stor3608, address(_3989));
                        _4475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _4569 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                        mem[mem[64] + mem[96] + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_4569) + _4475 + -mem[64] + 68
                    _4385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4385] = return_data.size
                    mem[_4385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        emit ContractUpgraded(stor3608, address(_3989));
                    _4478 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4385 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                    if ceil32(return_data.size) <= return_data.size:
                        revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                    mem[mem[64] + return_data.size + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _4478 + -mem[64] + 68
                mem[_4033 + mem[_4033] + 36] = 0
                delegate address(_3989).0x0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_4033] + _4033 + -mem[64] + 32]
                if not return_data.size:
                    if delegate.return_code:
                        emit ContractUpgraded(stor3608, address(_3989));
                    _4523 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4585 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4585) + _4523 + -mem[64] + 68
                _4433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4433] = return_data.size
                mem[_4433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_3989));
                _4526 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4433 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                if ceil32(return_data.size) <= return_data.size:
                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                mem[mem[64] + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _4526 + -mem[64] + 68
            mem[_2709 + _2701 + 32] = 0
            if not _2677:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _2701
                mem[mem[64] + 68 len ceil32(_2701)] = mem[_2709 + 32 len ceil32(_2701)]
                if ceil32(_2701) > _2701:
                    mem[mem[64] + _2701 + 68] = 0
                revert with 0, 32, _2701, mem[mem[64] + 68 len ceil32(_2701)]
            if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
                revert with 0, 'wrong govern', 0
            if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
                revert with 0, 'wrong governance contract', 0
            mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
            mem[32] = 4
            if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
                _3591 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3591] = 34
                mem[_3591 + 32 len 34] = code.data[15136 len 34]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3591 + 66 len 30]
                revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
            _3590 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3590] = 0
            mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
            mem[32] = 4
            stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
            _3668 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
            _3686 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3686] = 0
            mem[_3686 + 32] = 0
            mem[_3686 + 64] = 0
            mem[_3686 + 96] = 0
            if mem[_3668] < 32:
                revert with 0, 'toBytes32_outOfBounds'
            mem[_3686] = mem[_3668 + 32]
            if mem[_3686] != 'NFTBridge':
                revert with 0, 'invalid UpgradeContract: wrong module'
            if mem[_3668] < 33:
                revert with 0, 'toUint8_outOfBounds'
            mem[_3686 + 32] = mem[_3668 + 64 len 1]
            if mem[_3686 + 63 len 1] != 2:
                revert with 0, 'invalid UpgradeContract: wrong action'
            if mem[_3668] < 35:
                revert with 0, 'toUint16_outOfBounds'
            mem[_3686 + 64] = mem[_3668 + 65 len 2]
            if mem[_3668] < 67:
                revert with 0, 'toBytes32_outOfBounds'
            mem[_3686 + 96] = mem[_3668 + 67]
            if mem[_3668] != 67:
                revert with 0, 'invalid UpgradeContract: wrong length'
            if mem[_3686 + 94 len 2] != chainId:
                revert with 0, 'wrong chain id'
            _4002 = mem[_3686 + 96]
            if not ext_code.size(mem[_3686 + 96]):
                revert with 0, 'ERC1967: new implementation is not a contract'
            stor3608 = mem[_3686 + 108 len 20]
            emit Upgraded(mem[_3686 + 108 len 20]);
            _4054 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_4054 + 32 len 4] = unknown_0x8129fc1c(?????)
            mem[_4054 + 36 len ceil32(mem[_4054])] = mem[_4054 + 32 len ceil32(mem[_4054])]
            if ceil32(mem[_4054]) <= mem[_4054]:
                delegate address(_4002).0x0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_4054] + _4054 + -mem[64] + 32]
                if not return_data.size:
                    if delegate.return_code:
                        emit ContractUpgraded(stor3608, address(_4002));
                    _4481 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4571 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4571) + _4481 + -mem[64] + 68
                _4391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4391] = return_data.size
                mem[_4391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_4002));
                _4484 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4391 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                if ceil32(return_data.size) <= return_data.size:
                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                mem[mem[64] + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _4484 + -mem[64] + 68
            mem[_4054 + mem[_4054] + 36] = 0
            delegate address(_4002).0x0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_4054] + _4054 + -mem[64] + 32]
            if not return_data.size:
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_4002));
                _4529 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4587 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4587) + _4529 + -mem[64] + 68
            _4438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4438] = return_data.size
            mem[_4438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_4002));
            _4532 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4438 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[mem[64] + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _4532 + -mem[64] + 68
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + _929 + 833] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801
        require mem[ceil32(ceil32(arg1.length)) + _909 + 705] == mem[ceil32(ceil32(arg1.length)) + _909 + 733 len 4]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 705] = mem[ceil32(ceil32(arg1.length)) + _909 + 705]
        _1811 = mem[ceil32(ceil32(arg1.length)) + _909 + 737]
        require mem[ceil32(ceil32(arg1.length)) + _909 + 737] <= test266151307()
        require ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
        _1815 = mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]
        if mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449] > test266151307():
            revert with 0, 65
        _1819 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]) + 1
        mem[_1819] = mem[ceil32(ceil32(arg1.length)) + _909 + mem[ceil32(ceil32(arg1.length)) + _909 + 737] + 449]
        require _909 + _1811 + (_1815 << 7) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg1.length)) + _909 + _1811 + 481
        t = _1819 + 32
        while idx < _1815:
            require ceil32(ceil32(arg1.length)) + return_data.size + -s + 449 >= 128
            _2680 = mem[64]
            if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 128
            mem[_2680] = mem[s]
            mem[_2680 + 32] = mem[s + 32]
            require mem[s + 64] == mem[s + 95 len 1]
            mem[_2680 + 64] = mem[s + 64]
            require mem[s + 96] == mem[s + 127 len 1]
            mem[_2680 + 96] = mem[s + 96]
            mem[t] = _2680
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 737] = _1819
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769] = mem[ceil32(ceil32(arg1.length)) + _909 + 769]
        _2679 = mem[ceil32(ceil32(arg1.length)) + 481]
        require mem[ceil32(ceil32(arg1.length)) + 481] == bool(mem[ceil32(ceil32(arg1.length)) + 481])
        _2688 = mem[ceil32(ceil32(arg1.length)) + 513]
        require mem[ceil32(ceil32(arg1.length)) + 513] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
        _2702 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449] > test266151307():
            revert with 0, 65
        _2710 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1
        mem[_2710] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
        require _2688 + _2702 + 32 <= return_data.size
        mem[_2710 + 32 len ceil32(_2702)] = mem[ceil32(ceil32(arg1.length)) + _2688 + 481 len ceil32(_2702)]
        if ceil32(_2702) <= _2702:
            if not _2679:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _2702
                mem[mem[64] + 68 len ceil32(_2702)] = mem[_2710 + 32 len ceil32(_2702)]
                if ceil32(_2702) > _2702:
                    mem[mem[64] + _2702 + 68] = 0
                revert with 0, 32, _2702, mem[mem[64] + 68 len ceil32(_2702)]
            if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
                revert with 0, 'wrong govern', 0
            if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
                revert with 0, 'wrong governance contract', 0
            mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
            mem[32] = 4
            if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
                _3572 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3572] = 34
                mem[_3572 + 32 len 34] = code.data[15136 len 34]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3572 + 66 len 30]
                revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
            _3571 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3571] = 0
            mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
            mem[32] = 4
            stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
            _3647 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
            _3670 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3670] = 0
            mem[_3670 + 32] = 0
            mem[_3670 + 64] = 0
            mem[_3670 + 96] = 0
            if mem[_3647] < 32:
                revert with 0, 'toBytes32_outOfBounds'
            mem[_3670] = mem[_3647 + 32]
            if mem[_3670] != 'NFTBridge':
                revert with 0, 'invalid UpgradeContract: wrong module'
            if mem[_3647] < 33:
                revert with 0, 'toUint8_outOfBounds'
            mem[_3670 + 32] = mem[_3647 + 64 len 1]
            if mem[_3670 + 63 len 1] != 2:
                revert with 0, 'invalid UpgradeContract: wrong action'
            if mem[_3647] < 35:
                revert with 0, 'toUint16_outOfBounds'
            mem[_3670 + 64] = mem[_3647 + 65 len 2]
            if mem[_3647] < 67:
                revert with 0, 'toBytes32_outOfBounds'
            mem[_3670 + 96] = mem[_3647 + 67]
            if mem[_3647] != 67:
                revert with 0, 'invalid UpgradeContract: wrong length'
            if mem[_3670 + 94 len 2] != chainId:
                revert with 0, 'wrong chain id'
            _3992 = mem[_3670 + 96]
            if not ext_code.size(mem[_3670 + 96]):
                revert with 0, 'ERC1967: new implementation is not a contract'
            stor3608 = mem[_3670 + 108 len 20]
            emit Upgraded(mem[_3670 + 108 len 20]);
            _4038 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_4038 + 32 len 4] = unknown_0x8129fc1c(?????)
            mem[_4038 + 36 len ceil32(mem[_4038])] = mem[_4038 + 32 len ceil32(mem[_4038])]
            if ceil32(mem[_4038]) <= mem[_4038]:
                delegate address(_3992).0x0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_4038] + _4038 + -mem[64] + 32]
                if not return_data.size:
                    if delegate.return_code:
                        emit ContractUpgraded(stor3608, address(_3992));
                    _4487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4573 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4573) + _4487 + -mem[64] + 68
                _4397 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4397] = return_data.size
                mem[_4397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_3992));
                _4490 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4397 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                if ceil32(return_data.size) <= return_data.size:
                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                mem[mem[64] + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _4490 + -mem[64] + 68
            mem[_4038 + mem[_4038] + 36] = 0
            delegate address(_3992).0x0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_4038] + _4038 + -mem[64] + 32]
            if not return_data.size:
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_3992));
                _4535 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4589 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4589) + _4535 + -mem[64] + 68
            _4443 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4443] = return_data.size
            mem[_4443 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_3992));
            _4538 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4443 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[mem[64] + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _4538 + -mem[64] + 68
        mem[_2710 + _2702 + 32] = 0
        if not _2679:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _2702
            mem[mem[64] + 68 len ceil32(_2702)] = mem[_2710 + 32 len ceil32(_2702)]
            if ceil32(_2702) > _2702:
                mem[mem[64] + _2702 + 68] = 0
            revert with 0, 32, _2702, mem[mem[64] + 68 len ceil32(_2702)]
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
            revert with 0, 'wrong govern', 0
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
            revert with 0, 'wrong governance contract', 0
        mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
        mem[32] = 4
        if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
            _3595 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3595] = 34
            mem[_3595 + 32 len 34] = code.data[15136 len 34]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3595 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        _3594 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3594] = 0
        mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
        mem[32] = 4
        stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
        _3673 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
        _3690 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3690] = 0
        mem[_3690 + 32] = 0
        mem[_3690 + 64] = 0
        mem[_3690 + 96] = 0
        if mem[_3673] < 32:
            revert with 0, 'toBytes32_outOfBounds'
        mem[_3690] = mem[_3673 + 32]
        if mem[_3690] != 'NFTBridge':
            revert with 0, 'invalid UpgradeContract: wrong module'
        if mem[_3673] < 33:
            revert with 0, 'toUint8_outOfBounds'
        mem[_3690 + 32] = mem[_3673 + 64 len 1]
        if mem[_3690 + 63 len 1] != 2:
            revert with 0, 'invalid UpgradeContract: wrong action'
        if mem[_3673] < 35:
            revert with 0, 'toUint16_outOfBounds'
        mem[_3690 + 64] = mem[_3673 + 65 len 2]
        if mem[_3673] < 67:
            revert with 0, 'toBytes32_outOfBounds'
        mem[_3690 + 96] = mem[_3673 + 67]
        if mem[_3673] != 67:
            revert with 0, 'invalid UpgradeContract: wrong length'
        if mem[_3690 + 94 len 2] != chainId:
            revert with 0, 'wrong chain id'
        _4005 = mem[_3690 + 96]
        if not ext_code.size(mem[_3690 + 96]):
            revert with 0, 'ERC1967: new implementation is not a contract'
        stor3608 = mem[_3690 + 108 len 20]
        emit Upgraded(mem[_3690 + 108 len 20]);
        _4058 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_4058 + 32 len 4] = unknown_0x8129fc1c(?????)
        mem[_4058 + 36 len ceil32(mem[_4058])] = mem[_4058 + 32 len ceil32(mem[_4058])]
        if ceil32(mem[_4058]) <= mem[_4058]:
            delegate address(_4005).0x0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_4058] + _4058 + -mem[64] + 32]
            if not return_data.size:
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_4005));
                _4493 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4575 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4575) + _4493 + -mem[64] + 68
            _4403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4403] = return_data.size
            mem[_4403 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_4005));
            _4496 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4403 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[mem[64] + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _4496 + -mem[64] + 68
        mem[_4058 + mem[_4058] + 36] = 0
        delegate address(_4005).0x0 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len mem[_4058] + _4058 + -mem[64] + 32]
        if not return_data.size:
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_4005));
            _4541 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4591 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4591) + _4541 + -mem[64] + 68
        _4448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4448] = return_data.size
        mem[_4448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            emit ContractUpgraded(stor3608, address(_4005));
        _4544 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4448 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[mem[64] + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _4544 + -mem[64] + 68
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 517] = 0
    require ext_code.size(wormholeAddress)
    staticcall wormholeAddress.0xc0fd8bde with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg1.length)) + 449 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    _910 = mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0
    require mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 <= test266151307()
    require return_data.size - mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 >= 352
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801
    require mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 + 449] == mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 + 480 len 1]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 449] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 449 len 4], 0 + 449]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 481] == mem[ceil32(ceil32(arg1.length)) + _910 + 509 len 4]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 481] = mem[ceil32(ceil32(arg1.length)) + _910 + 481]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 513] == mem[ceil32(ceil32(arg1.length)) + _910 + 541 len 4]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 513] = mem[ceil32(ceil32(arg1.length)) + _910 + 513]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 545] == mem[ceil32(ceil32(arg1.length)) + _910 + 575 len 2]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 545] = mem[ceil32(ceil32(arg1.length)) + _910 + 545]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] = mem[ceil32(ceil32(arg1.length)) + _910 + 577]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 609] == mem[ceil32(ceil32(arg1.length)) + _910 + 633 len 8]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 609] = mem[ceil32(ceil32(arg1.length)) + _910 + 609]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 641] == mem[ceil32(ceil32(arg1.length)) + _910 + 672 len 1]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 641] = mem[ceil32(ceil32(arg1.length)) + _910 + 641]
    _928 = mem[ceil32(ceil32(arg1.length)) + _910 + 673]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 673] <= test266151307()
    require ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
    _930 = mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 449]
    if mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 449] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 449])) + 353 < 352 or ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 449])) + 802 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 449])) + 802
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801] = mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 673] + 449]
    require _910 + _928 + _930 + 32 <= return_data.size
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 833 len ceil32(_930)] = mem[ceil32(ceil32(arg1.length)) + _910 + _928 + 481 len ceil32(_930)]
    if ceil32(_930) <= _930:
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801
        require mem[ceil32(ceil32(arg1.length)) + _910 + 705] == mem[ceil32(ceil32(arg1.length)) + _910 + 733 len 4]
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 705] = mem[ceil32(ceil32(arg1.length)) + _910 + 705]
        _1810 = mem[ceil32(ceil32(arg1.length)) + _910 + 737]
        require mem[ceil32(ceil32(arg1.length)) + _910 + 737] <= test266151307()
        require ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
        _1814 = mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]
        if mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449] > test266151307():
            revert with 0, 65
        _1818 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]) + 1
        mem[_1818] = _1814
        require _910 + _1810 + (_1814 << 7) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(arg1.length)) + _910 + _1810 + 481
        t = _1818 + 32
        while idx < _1814:
            require ceil32(ceil32(arg1.length)) + return_data.size + -s + 449 >= 128
            _2682 = mem[64]
            if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 128
            mem[_2682] = mem[s]
            mem[_2682 + 32] = mem[s + 32]
            require mem[s + 64] == mem[s + 95 len 1]
            mem[_2682 + 64] = mem[s + 64]
            require mem[s + 96] == mem[s + 127 len 1]
            mem[_2682 + 96] = mem[s + 96]
            mem[t] = _2682
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 737] = _1818
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769] = mem[ceil32(ceil32(arg1.length)) + _910 + 769]
        _2681 = mem[ceil32(ceil32(arg1.length)) + 481]
        require mem[ceil32(ceil32(arg1.length)) + 481] == bool(mem[ceil32(ceil32(arg1.length)) + 481])
        _2691 = mem[ceil32(ceil32(arg1.length)) + 513]
        require mem[ceil32(ceil32(arg1.length)) + 513] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
        _2703 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449] > test266151307():
            revert with 0, 65
        _2711 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1
        mem[_2711] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
        require _2691 + _2703 + 32 <= return_data.size
        mem[_2711 + 32 len ceil32(_2703)] = mem[ceil32(ceil32(arg1.length)) + _2691 + 481 len ceil32(_2703)]
        if ceil32(_2703) <= _2703:
            if not _2681:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _2703
                mem[mem[64] + 68 len ceil32(_2703)] = mem[_2711 + 32 len ceil32(_2703)]
                if ceil32(_2703) > _2703:
                    mem[mem[64] + _2703 + 68] = 0
                revert with 0, 32, _2703, mem[mem[64] + 68 len ceil32(_2703)]
            if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
                revert with 0, 'wrong govern', 0
            if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
                revert with 0, 'wrong governance contract', 0
            mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
            mem[32] = 4
            if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
                _3578 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3578] = 34
                mem[_3578 + 32 len 34] = code.data[15136 len 34]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3578 + 66 len 30]
                revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
            _3577 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3577] = 0
            mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
            mem[32] = 4
            stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
            _3653 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
            _3675 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3675] = 0
            mem[_3675 + 32] = 0
            mem[_3675 + 64] = 0
            mem[_3675 + 96] = 0
            if mem[_3653] < 32:
                revert with 0, 'toBytes32_outOfBounds'
            mem[_3675] = mem[_3653 + 32]
            if mem[_3675] != 'NFTBridge':
                revert with 0, 'invalid UpgradeContract: wrong module'
            if mem[_3653] < 33:
                revert with 0, 'toUint8_outOfBounds'
            mem[_3675 + 32] = mem[_3653 + 64 len 1]
            if mem[_3675 + 63 len 1] != 2:
                revert with 0, 'invalid UpgradeContract: wrong action'
            if mem[_3653] < 35:
                revert with 0, 'toUint16_outOfBounds'
            mem[_3675 + 64] = mem[_3653 + 65 len 2]
            if mem[_3653] < 67:
                revert with 0, 'toBytes32_outOfBounds'
            mem[_3675 + 96] = mem[_3653 + 67]
            if mem[_3653] != 67:
                revert with 0, 'invalid UpgradeContract: wrong length'
            if mem[_3675 + 94 len 2] != chainId:
                revert with 0, 'wrong chain id'
            _3995 = mem[_3675 + 96]
            if not ext_code.size(mem[_3675 + 96]):
                revert with 0, 'ERC1967: new implementation is not a contract'
            stor3608 = mem[_3675 + 108 len 20]
            emit Upgraded(mem[_3675 + 108 len 20]);
            _4043 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_4043 + 32 len 4] = unknown_0x8129fc1c(?????)
            mem[_4043 + 36 len ceil32(mem[_4043])] = mem[_4043 + 32 len ceil32(mem[_4043])]
            if ceil32(mem[_4043]) <= mem[_4043]:
                delegate address(_3995).0x0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_4043] + _4043 + -mem[64] + 32]
                if not return_data.size:
                    if delegate.return_code:
                        emit ContractUpgraded(stor3608, address(_3995));
                    _4499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _4577 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_4577) + _4499 + -mem[64] + 68
                _4409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4409] = return_data.size
                mem[_4409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_3995));
                _4502 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4409 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                if ceil32(return_data.size) <= return_data.size:
                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                mem[mem[64] + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _4502 + -mem[64] + 68
            mem[_4043 + mem[_4043] + 36] = 0
            delegate address(_3995).0x0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_4043] + _4043 + -mem[64] + 32]
            if not return_data.size:
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_3995));
                _4547 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4593 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4593) + _4547 + -mem[64] + 68
            _4453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4453] = return_data.size
            mem[_4453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_3995));
            _4550 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4453 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[mem[64] + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _4550 + -mem[64] + 68
        mem[_2711 + _2703 + 32] = 0
        if not _2681:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _2703
            mem[mem[64] + 68 len ceil32(_2703)] = mem[_2711 + 32 len ceil32(_2703)]
            if ceil32(_2703) > _2703:
                mem[mem[64] + _2703 + 68] = 0
            revert with 0, 32, _2703, mem[mem[64] + 68 len ceil32(_2703)]
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
            revert with 0, 'wrong govern', 0
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
            revert with 0, 'wrong governance contract', 0
        mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
        mem[32] = 4
        if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
            _3599 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3599] = 34
            mem[_3599 + 32 len 34] = code.data[15136 len 34]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3599 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        _3598 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3598] = 0
        mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
        mem[32] = 4
        stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
        _3678 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
        _3694 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3694] = 0
        mem[_3694 + 32] = 0
        mem[_3694 + 64] = 0
        mem[_3694 + 96] = 0
        if mem[_3678] < 32:
            revert with 0, 'toBytes32_outOfBounds'
        mem[_3694] = mem[_3678 + 32]
        if mem[_3694] != 'NFTBridge':
            revert with 0, 'invalid UpgradeContract: wrong module'
        if mem[_3678] < 33:
            revert with 0, 'toUint8_outOfBounds'
        mem[_3694 + 32] = mem[_3678 + 64 len 1]
        if mem[_3694 + 63 len 1] != 2:
            revert with 0, 'invalid UpgradeContract: wrong action'
        if mem[_3678] < 35:
            revert with 0, 'toUint16_outOfBounds'
        mem[_3694 + 64] = mem[_3678 + 65 len 2]
        if mem[_3678] < 67:
            revert with 0, 'toBytes32_outOfBounds'
        mem[_3694 + 96] = mem[_3678 + 67]
        if mem[_3678] != 67:
            revert with 0, 'invalid UpgradeContract: wrong length'
        if mem[_3694 + 94 len 2] != chainId:
            revert with 0, 'wrong chain id'
        _4008 = mem[_3694 + 96]
        if not ext_code.size(mem[_3694 + 96]):
            revert with 0, 'ERC1967: new implementation is not a contract'
        stor3608 = mem[_3694 + 108 len 20]
        emit Upgraded(mem[_3694 + 108 len 20]);
        _4062 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_4062 + 32 len 4] = unknown_0x8129fc1c(?????)
        mem[_4062 + 36 len ceil32(mem[_4062])] = mem[_4062 + 32 len ceil32(mem[_4062])]
        if ceil32(mem[_4062]) <= mem[_4062]:
            delegate address(_4008).0x0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_4062] + _4062 + -mem[64] + 32]
            if not return_data.size:
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_4008));
                _4505 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4579 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4579) + _4505 + -mem[64] + 68
            _4415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4415] = return_data.size
            mem[_4415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_4008));
            _4508 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4415 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[mem[64] + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _4508 + -mem[64] + 68
        mem[_4062 + mem[_4062] + 36] = 0
        delegate address(_4008).0x0 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len mem[_4062] + _4062 + -mem[64] + 32]
        if not return_data.size:
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_4008));
            _4553 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4595 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4595) + _4553 + -mem[64] + 68
        _4458 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4458] = return_data.size
        mem[_4458 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            emit ContractUpgraded(stor3608, address(_4008));
        _4556 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4458 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[mem[64] + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _4556 + -mem[64] + 68
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + _930 + 833] = 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 801
    require mem[ceil32(ceil32(arg1.length)) + _910 + 705] == mem[ceil32(ceil32(arg1.length)) + _910 + 733 len 4]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 705] = mem[ceil32(ceil32(arg1.length)) + _910 + 705]
    _1812 = mem[ceil32(ceil32(arg1.length)) + _910 + 737]
    require mem[ceil32(ceil32(arg1.length)) + _910 + 737] <= test266151307()
    require ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
    _1816 = mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]
    if mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449] > test266151307():
        revert with 0, 65
    _1820 = mem[64]
    if mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + _910 + mem[ceil32(ceil32(arg1.length)) + _910 + 737] + 449]) + 1
    mem[_1820] = _1816
    require _910 + _1812 + (_1816 << 7) + 32 <= return_data.size
    idx = 0
    s = ceil32(ceil32(arg1.length)) + _910 + _1812 + 481
    t = _1820 + 32
    while idx < _1816:
        require ceil32(ceil32(arg1.length)) + return_data.size + -s + 449 >= 128
        _2684 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_2684] = mem[s]
        mem[_2684 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 95 len 1]
        mem[_2684 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 127 len 1]
        mem[_2684 + 96] = mem[s + 96]
        mem[t] = _2684
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 737] = _1820
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769] = mem[ceil32(ceil32(arg1.length)) + _910 + 769]
    _2683 = mem[ceil32(ceil32(arg1.length)) + 481]
    require mem[ceil32(ceil32(arg1.length)) + 481] == bool(mem[ceil32(ceil32(arg1.length)) + 481])
    _2694 = mem[ceil32(ceil32(arg1.length)) + 513]
    require mem[ceil32(ceil32(arg1.length)) + 513] <= test266151307()
    require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 480 < ceil32(ceil32(arg1.length)) + return_data.size + 449
    _2704 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
    if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449] > test266151307():
        revert with 0, 65
    _2712 = mem[64]
    if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449])) + 1
    mem[_2712] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 449]
    require _2694 + _2704 + 32 <= return_data.size
    mem[_2712 + 32 len ceil32(_2704)] = mem[ceil32(ceil32(arg1.length)) + _2694 + 481 len ceil32(_2704)]
    if ceil32(_2704) <= _2704:
        if not _2683:
            _3585 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _2704
            mem[mem[64] + 68 len ceil32(_2704)] = mem[_2712 + 32 len ceil32(_2704)]
            if ceil32(_2704) <= _2704:
                revert with 0, 32, _2704, mem[mem[64] + 68 len ceil32(_2704)]
            mem[mem[64] + _2704 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2704) + _3585 + -mem[64] + 68
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
            revert with 0, 'wrong govern', 0
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
            revert with 0, 'wrong governance contract', 0
        mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
        mem[32] = 4
        if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
            _3584 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3584] = 34
            mem[_3584 + 32 len 34] = code.data[15136 len 34]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3584 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        _3583 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3583] = 0
        mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
        mem[32] = 4
        stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
        _3659 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
        _3680 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3680] = 0
        mem[_3680 + 32] = 0
        mem[_3680 + 64] = 0
        mem[_3680 + 96] = 0
        if mem[_3659] < 32:
            revert with 0, 'toBytes32_outOfBounds'
        mem[_3680] = mem[_3659 + 32]
        if mem[_3680] != 'NFTBridge':
            revert with 0, 'invalid UpgradeContract: wrong module'
        if mem[_3659] < 33:
            revert with 0, 'toUint8_outOfBounds'
        mem[_3680 + 32] = mem[_3659 + 64 len 1]
        if mem[_3680 + 63 len 1] != 2:
            revert with 0, 'invalid UpgradeContract: wrong action'
        if mem[_3659] < 35:
            revert with 0, 'toUint16_outOfBounds'
        mem[_3680 + 64] = mem[_3659 + 65 len 2]
        if mem[_3659] < 67:
            revert with 0, 'toBytes32_outOfBounds'
        mem[_3680 + 96] = mem[_3659 + 67]
        if mem[_3659] != 67:
            revert with 0, 'invalid UpgradeContract: wrong length'
        if mem[_3680 + 94 len 2] != chainId:
            revert with 0, 'wrong chain id'
        _3998 = mem[_3680 + 96]
        if not ext_code.size(mem[_3680 + 96]):
            revert with 0, 'ERC1967: new implementation is not a contract'
        stor3608 = mem[_3680 + 108 len 20]
        emit Upgraded(mem[_3680 + 108 len 20]);
        _4048 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_4048 + 32 len 4] = unknown_0x8129fc1c(?????)
        mem[_4048 + 36 len ceil32(mem[_4048])] = mem[_4048 + 32 len ceil32(mem[_4048])]
        if ceil32(mem[_4048]) <= mem[_4048]:
            delegate address(_3998).0x0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_4048] + _4048 + -mem[64] + 32]
            if not return_data.size:
                if delegate.return_code:
                    emit ContractUpgraded(stor3608, address(_3998));
                _4511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _4581 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_4581) + _4511 + -mem[64] + 68
            _4421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4421] = return_data.size
            mem[_4421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_3998));
            _4514 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4421 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[mem[64] + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _4514 + -mem[64] + 68
        mem[_4048 + mem[_4048] + 36] = 0
        delegate address(_3998).0x0 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len mem[_4048] + _4048 + -mem[64] + 32]
        if not return_data.size:
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_3998));
            _4559 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4597 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4597) + _4559 + -mem[64] + 68
        _4463 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4463] = return_data.size
        mem[_4463 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            emit ContractUpgraded(stor3608, address(_3998));
        _4562 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4463 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[mem[64] + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _4562 + -mem[64] + 68
    mem[_2712 + _2704 + 32] = 0
    if not _2683:
        _3604 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _2704
        mem[mem[64] + 68 len ceil32(_2704)] = mem[_2712 + 32 len ceil32(_2704)]
        if ceil32(_2704) <= _2704:
            revert with 0, 32, _2704, mem[mem[64] + 68 len ceil32(_2704)]
        mem[mem[64] + _2704 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2704) + _3604 + -mem[64] + 68
    if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 575 len 2] != governanceChainId:
        revert with 0, 'wrong govern', 0
    if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 577] != governanceContract:
        revert with 0, 'wrong governance contract', 0
    mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
    mem[32] = 4
    if stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]]:
        _3603 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3603] = 34
        mem[_3603 + 32 len 34] = code.data[15136 len 34]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 34
        mem[mem[64] + 68 len 64] = code.data[15136 len 34], mem[_3603 + 66 len 30]
        revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
    _3602 = mem[64]
    mem[64] = mem[64] + 32
    mem[_3602] = 0
    mem[0] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]
    mem[32] = 4
    stor4[mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 769]] = 1
    _3683 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 673]
    _3698 = mem[64]
    mem[64] = mem[64] + 128
    mem[_3698] = 0
    mem[_3698 + 32] = 0
    mem[_3698 + 64] = 0
    mem[_3698 + 96] = 0
    if mem[_3683] < 32:
        revert with 0, 'toBytes32_outOfBounds'
    mem[_3698] = mem[_3683 + 32]
    if mem[_3698] != 'NFTBridge':
        revert with 0, 'invalid UpgradeContract: wrong module'
    if mem[_3683] < 33:
        revert with 0, 'toUint8_outOfBounds'
    mem[_3698 + 32] = mem[_3683 + 64 len 1]
    if mem[_3698 + 63 len 1] != 2:
        revert with 0, 'invalid UpgradeContract: wrong action'
    if mem[_3683] < 35:
        revert with 0, 'toUint16_outOfBounds'
    mem[_3698 + 64] = mem[_3683 + 65 len 2]
    if mem[_3683] < 67:
        revert with 0, 'toBytes32_outOfBounds'
    mem[_3698 + 96] = mem[_3683 + 67]
    if mem[_3683] != 67:
        revert with 0, 'invalid UpgradeContract: wrong length'
    if mem[_3698 + 94 len 2] != chainId:
        revert with 0, 'wrong chain id'
    _4011 = mem[_3698 + 96]
    if not ext_code.size(mem[_3698 + 96]):
        revert with 0, 'ERC1967: new implementation is not a contract'
    stor3608 = mem[_3698 + 108 len 20]
    emit Upgraded(mem[_3698 + 108 len 20]);
    _4066 = mem[64]
    mem[mem[64]] = 4
    mem[64] = mem[64] + 36
    mem[_4066 + 32 len 4] = unknown_0x8129fc1c(?????)
    mem[_4066 + 36 len ceil32(mem[_4066])] = mem[_4066 + 32 len ceil32(mem[_4066])]
    if ceil32(mem[_4066]) <= mem[_4066]:
        delegate address(_4011).0x0 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len mem[_4066] + _4066 + -mem[64] + 32]
        if not return_data.size:
            if delegate.return_code:
                emit ContractUpgraded(stor3608, address(_4011));
            _4517 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _4583 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_4583) + _4517 + -mem[64] + 68
        _4427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4427] = return_data.size
        mem[_4427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            emit ContractUpgraded(stor3608, address(_4011));
        _4520 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4427 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[mem[64] + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _4520 + -mem[64] + 68
    mem[_4066 + mem[_4066] + 36] = 0
    delegate address(_4011).0x0 with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len mem[_4066] + _4066 + -mem[64] + 32]
    if not return_data.size:
        if delegate.return_code:
            emit ContractUpgraded(stor3608, address(_4011));
        _4565 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _4599 = mem[96]
        mem[mem[64] + 36] = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_4599) + _4565 + -mem[64] + 68
    _4468 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_4468] = return_data.size
    mem[_4468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
        emit ContractUpgraded(stor3608, address(_4011));
    _4568 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = return_data.size
    mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4468 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) <= return_data.size:
        revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
    mem[mem[64] + return_data.size + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(return_data.size) + _4568 + -mem[64] + 68
}



}
