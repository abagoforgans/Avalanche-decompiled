contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(bytes arg1, bytes32 arg2, bytes32 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7)
#
const FIELD_SIZE = 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000

const ROOT_HISTORY_SIZE = 100

const ZERO_VALUE = 0x2fe54c60d3acabf3343a35b6eba15db4821b340f76e741e2249685ed4899af6c


uint32 levels;
array of uint256 filledSubtrees;
array of uint256 zeros;
uint32 currentRootIndex;
uint32 nextIndex; offset 32
array of uint256 lastRoot;
uint256 stor103;
uint256 stor104;
address owner;
uint32 stor106; offset 64
uint256 stor106; offset 32
uint256 denomination;
mapping of uint8 stor107;
mapping of uint8 stor108;
address verifierAddress;
address operatorAddress;
address tokenAddress;
address collectionAddress;
uint256 sub_f27b4b45;

function nullifierHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
}

function verifier() {
    return verifierAddress
}

function levels() {
    return levels
}

function operator() {
    return operatorAddress
}

function owner_address() {
    return collectionAddress
}

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor108[arg1])
}

function denomination() {
    return denomination
}

function owner() {
    return owner
}

function currentRootIndex() {
    return currentRootIndex
}

function getTransferFee() {
    return sub_f27b4b45
}

function getLastRoot() {
    require currentRootIndex < 100
    return lastRoot[stor3]
}

function roots(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return lastRoot[arg1]
}

function getCollectionAddress() {
    return collectionAddress
}

function isSpent(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
}

function zeros(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < zeros.length
    return zeros[arg1]
}

function filledSubtrees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < filledSubtrees.length
    return filledSubtrees[arg1]
}

function sub_f27b4b45(?) {
    return sub_f27b4b45
}

function token() {
    return tokenAddress
}

function nextIndex() {
    return nextIndex
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0x14f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0x14f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_f27b4b45 = arg1
}

function setCollectionAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0x14f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    collectionAddress = arg1
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    operatorAddress = arg1
}

function updateVerifier(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    verifierAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0x14f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isKnownRoot(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require uint32(var11001) < 100
    if arg1 != lastRoot[var13001]:
        if not uint32(var15001):
            if currentRootIndex == 99:
                return 0
            if arg1 != stor103:
                var15001 = 99
                continue 
        else:
            if currentRootIndex == uint32(var15001 - 1):
                return 0
            require uint32(var15001 - 1) < 100
            if arg1 != lastRoot[uint32(var15001 - 1)]:
                var15001 = var15001 - 1
                continue 
    return 1
}

function isSpentArray(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[7661 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 107
        if stor107[cd[((32 * idx) + arg1 + 36)]]:
            require idx < arg1.length
            mem[(32 * idx) + 128] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function hashLeftRight(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0, '_left should be inside the field'
    if arg2 >= 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c,
                    mem[197 len 31]
    require ext_code.size(0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3)
    delegate 0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3.MiMCSponge(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3)
    delegate 0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3.MiMCSponge(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mulmod(delegate.return_data[0], arg2, 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function deposit(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    stor104++
    if stor108[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7254686520636f6d6d69746d656e7420686173206265656e207375626d69747465,
                    mem[197 len 31]
    if nextIndex == uint32(2^levels):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe4d65726b6c6520747265652069732066756c6c2e204e6f206d6f7265206c656166732063616e2062652061646465,
                    mem[211 len 17]
    nextIndex = uint32(nextIndex + 1)
    idx = 0
    s = 0
    s = 0
    s = arg1
    t = nextIndex
    while uint32(idx) < levels:
        if bool(t):
            require uint32(idx) < filledSubtrees.length
            if filledSubtrees[uint32(idx)] >= 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, '_left should be inside the field'
            if s >= 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, 32, 33, 0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
            require ext_code.size(0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3)
            delegate 0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3.MiMCSponge(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args filledSubtrees[uint32(idx)], 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = 1
            mem[132] = delegate.return_data[32]
            require ext_code.size(0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3)
            delegate 0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3.MiMCSponge(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mulmod(delegate.return_data[0], s, 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
            mem[96 len 64] = delegate.return_data[0 len 64]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = s
            s = filledSubtrees[uint32(idx)]
            s = delegate.return_data[0]
            t = uint32(t) / 2
            continue 
        require uint32(idx) < zeros.length
        require uint32(idx) < filledSubtrees.length
        filledSubtrees[uint32(idx)] = s
        if s >= 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, '_left should be inside the field'
        if zeros[uint32(idx)] >= 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, 32, 33, 0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
        require ext_code.size(0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3)
        delegate 0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3.MiMCSponge(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = 1
        mem[132] = delegate.return_data[32]
        require ext_code.size(0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3)
        delegate 0xe8cb37f3df3f99cf54da0f728dad584dec80b5b3.MiMCSponge(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mulmod(delegate.return_data[0], zeros[uint32(idx)], 0x2e30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
        mem[96 len 64] = delegate.return_data[0 len 64]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        idx = idx + 1
        s = zeros[uint32(idx)]
        s = s
        s = delegate.return_data[0]
        t = uint32(t) / 2
        continue 
    currentRootIndex = uint32(uint32(currentRootIndex + 1) % 100)
    require uint32(uint32(currentRootIndex + 1) % 100) < 100
    lastRoot[uint32(uint32(stor3 + 1) % 100)] = s
    stor108[arg1] = 1
    if msg.value:
        revert with 0, 
                    32,
                    48,
                    0x644554482076616c756520697320737570706f73656420746f206265203020666f7220455243323020696e7374616e63,
                    mem[212 len 16]
    mem[228 len 96] = 0, msg.sender, address(this.address), Mask(224, 0, stor106.field_32)
    mem[352 len 4] = uint32(stor106.field_64)
    call tokenAddress with:
         gas gas_remaining wei
        args denomination, address(this.address), Mask(224, 0, stor106.field_32) >> 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'not enough allowed tokens'
        revert with 0, 
                    32,
                    42,
                    0x6464617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                    mem[338 len 14],
                    uint32(stor106.field_64),
                    mem[356 len 4]
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'not enough allowed tokens'
    if return_data.size:
        if return_data.size != 32:
            revert with 0, 
                        32,
                        42,
                        0x6464617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                        mem[ceil32(return_data.size) + 339 len 22]
        require return_data.size >= 32
        if not mem[260]:
            revert with 0, 
                        32,
                        47,
                        0x646e6f7420656e6f75676820616c6c6f77656420746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                        mem[ceil32(return_data.size) + 344 len 17]
    emit Deposit(nextIndex - 1 << 224, block.timestamp, arg1);
    if stor104 + 1 != stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
