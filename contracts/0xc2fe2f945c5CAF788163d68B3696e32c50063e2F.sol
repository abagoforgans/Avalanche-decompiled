contract main {




// =====================  Runtime code  =====================


const FIELD_SIZE = 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000

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
uint256 denomination;
mapping of uint8 stor106;
mapping of uint8 stor107;
address verifierAddress;
address operatorAddress;

function nullifierHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
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

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
}

function denomination() {
    return denomination
}

function currentRootIndex() {
    return currentRootIndex
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

function isSpent(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
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

function nextIndex() {
    return nextIndex
}

function _fallback() payable {
    revert
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    operatorAddress = arg1
}

function updateVerifier(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x754f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    verifierAddress = arg1
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
        mem[128 len 32 * arg1.length] = code.data[5762 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 106
        if stor106[cd[((32 * idx) + arg1 + 36)]]:
            require idx < arg1.length
            mem[(32 * idx) + 128] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function hashLeftRight(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0, '_left should be inside the field'
    if arg2 >= 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e5f72696768742073686f756c6420626520696e7369646520746865206669656c,
                    mem[197 len 31]
    require ext_code.size(0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f)
    delegate 0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f.MiMCSponge(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f)
    delegate 0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f.MiMCSponge(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args mulmod(delegate.return_data[0], arg2, 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function deposit(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    stor104++
    if stor107[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x154686520636f6d6d69746d656e7420686173206265656e207375626d69747465,
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
            if filledSubtrees[uint32(idx)] >= 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, '_left should be inside the field'
            if s >= 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, 32, 33, 0x6e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
            require ext_code.size(0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f)
            delegate 0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f.MiMCSponge(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args filledSubtrees[uint32(idx)], 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = 1
            mem[132] = delegate.return_data[32]
            require ext_code.size(0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f)
            delegate 0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f.MiMCSponge(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mulmod(delegate.return_data[0], s, 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
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
        if s >= 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, '_left should be inside the field'
        if zeros[uint32(idx)] >= 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, 32, 33, 0x6e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
        require ext_code.size(0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f)
        delegate 0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f.MiMCSponge(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args s, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = 1
        mem[132] = delegate.return_data[32]
        require ext_code.size(0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f)
        delegate 0x56b6f162bdcf30d7a5ad76b462b9337f32549e7f.MiMCSponge(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mulmod(delegate.return_data[0], zeros[uint32(idx)], 0x6530644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
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
    stor107[arg1] = 1
    if denomination != msg.value:
        revert with 0, 
                    32,
                    56,
                    0x64506c656173652073656e6420606d697844656e6f6d696e6174696f6e602045544820616c6f6e672077697468207472616e73616374696f,
                    mem[220 len 8]
    emit Deposit(nextIndex - 1 << 224, block.timestamp, arg1);
    if stor104 + 1 != stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function withdraw(bytes arg1, bytes32 arg2, bytes32 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    stor104++
    if arg6 > denomination:
        revert with 0, 'Fee exceeds transfer value'
    mem[0] = arg3
    mem[32] = 106
    if stor106[arg3]:
        revert with 0, 'The note has been already spent'
    if not arg2:
        revert with 0, 'Cannot find your merkle root'
    require uint32(var16001) < 100
    if arg2 != lastRoot[var18001]:
        if not uint32(var20001):
            if currentRootIndex == 99:
                revert with 0, 'Cannot find your merkle root'
            if arg2 != stor103:
                var20001 = 99
                continue 
        else:
            if currentRootIndex == uint32(var20001 - 1):
                revert with 0, 'Cannot find your merkle root'
            require uint32(var20001 - 1) < 100
            if arg2 != lastRoot[uint32(var20001 - 1)]:
                var20001 = var20001 - 1
                continue 
    mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
    mem[516] = arg1.length
    mem[548 len arg1.length] = arg1[all]
    mem[arg1.length + 548] = 0
    require ext_code.size(verifierAddress)
    call verifierAddress.0x695ef6f9 with:
         gas gas_remaining wei
        args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid withdraw proof'
    stor106[arg3] = 1
    if msg.value:
        revert with 0, 
                    32,
                    53,
                    0x2e4d6573736167652076616c756520697320737570706f73656420746f206265207a65726f20666f722045544820696e7374616e63,
                    Mask(88, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
    if arg7:
        revert with 0, 
                    32,
                    52,
                    0x64526566756e642076616c756520697320737570706f73656420746f206265207a65726f20666f722045544820696e7374616e63,
                    Mask(96, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
    call arg4 with:
       value denomination - arg6 - (denomination / 100) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        37,
                        0x647061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                        Mask(216, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
        if arg6:
            call arg5 with:
               value arg6 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x757061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                Mask(232, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x757061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                mem[ceil32(return_data.size) + 392 len 29]
            ('bool', 'ext_call.success')
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        37,
                        0x647061796d656e7420746f205f726563697069656e7420646964206e6f7420676f20746872,
                        mem[ceil32(return_data.size) + 394 len 27]
        if arg6:
            call arg5 with:
               value arg6 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x757061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                mem[ceil32(return_data.size) + 392 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x757061796d656e7420746f205f72656c6179657220646964206e6f7420676f20746872,
                                mem[(2 * ceil32(return_data.size)) + 393 len 29]
            ('bool', 'ext_call.success')
    call 0x886ed97a380af25ac1bc09789e9baad4923652c2 with:
       value denomination / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'payment to owner did not go thru'
    emit Withdrawal(address(arg4), arg3, arg6, arg5);
    if stor104 + 1 != stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
