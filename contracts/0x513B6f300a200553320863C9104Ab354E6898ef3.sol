contract main {




// =====================  Runtime code  =====================


const MIN_REGISTRATION_DURATION = (672 * 24 * 3600)


address owner;
address stor1;
address stor2;
uint256 minCommitmentAge;
uint256 maxCommitmentAge;
mapping of uint256 commitments;

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return commitments[arg1]
}

function minCommitmentAge() {
    return minCommitmentAge
}

function owner() {
    return owner
}

function maxCommitmentAge() {
    return maxCommitmentAge
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPriceOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    emit NewPriceOracle(arg1);
}

function setCommitmentAges(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minCommitmentAge = arg1
    maxCommitmentAge = arg2
}

function commit(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if commitments[arg1] > !maxCommitmentAge:
        revert with 'NH{q', 17
    require commitments[arg1] + maxCommitmentAge < block.timestamp
    commitments[arg1] = block.timestamp
}

function withdraw() {
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x18fac0600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0xca27ac4c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function makeCommitment(string arg1, address arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    return sha3(sha3(arg1[all]), arg2, arg3)
}

function makeCommitmentWithConfig(string arg1, address arg2, bytes32 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg4 == arg4
    require arg5 == arg5
    if not arg4:
        if not arg5:
            return sha3(sha3(arg1[all]), arg2, arg3)
        require arg4
    return sha3(sha3(arg1[all]), arg2, arg4, arg5, arg3)
}

function rentPrice(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor1)
    staticcall stor1.0xd6e4fa86 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x50e9a715 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function renew(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(stor1)
    staticcall stor1.0xd6e4fa86 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 0x50e9a71500000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    staticcall stor2.0x50e9a715 with:
            gas gas_remaining wei
           args 96, 0, ext_call.return_data[4 len 28], arg2, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xc475abff with:
         gas gas_remaining wei
        args sha3(arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value > ext_call.return_data[0]:
        if msg.value < ext_call.return_data[0]:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit NameRenewed(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]));
}

function valid(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        idx = idx + 5
        s = s + 1
        continue 
    return s >= 3
}

function available(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        idx = idx + 5
        s = s + 1
        continue 
    if s < 3:
        return s >= 3
    require ext_code.size(stor1)
    staticcall stor1.0x96e494e8 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function register(string arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 192] = address(arg2)
    mem[ceil32(arg1.length) + 212] = arg4
    mem[ceil32(arg1.length) + 128] = 84
    mem[64] = ceil32(arg1.length) + 244
    if commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] > !minCommitmentAge:
        revert with 'NH{q', 17
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + minCommitmentAge <= block.timestamp
    mem[0] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[32] = 5
    if commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] > !maxCommitmentAge:
        revert with 'NH{q', 17
    require commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] + maxCommitmentAge > block.timestamp
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        idx = idx + 5
        s = s + 1
        continue 
    require s >= 3
    require ext_code.size(stor1)
    staticcall stor1.0x96e494e8 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    commitments[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] = 0
    require ext_code.size(stor1)
    staticcall stor1.0xd6e4fa86 with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x50e9a715 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 >= 672 * 24 * 3600
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xfca247ac with:
         gas gas_remaining wei
        args sha3(arg1[all]), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit NameRegistered(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]), arg2);
    if msg.value > ext_call.return_data[0]:
        if msg.value < ext_call.return_data[0]:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function registerWithConfig(string arg1, address arg2, uint256 arg3, bytes32 arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if arg5:
        mem[ceil32(ceil32(arg1.length)) + 129] = sha3(arg1[all])
        mem[ceil32(ceil32(arg1.length)) + 161] = address(arg2)
        mem[ceil32(ceil32(arg1.length)) + 181] = address(arg5)
        mem[ceil32(ceil32(arg1.length)) + 201] = address(arg6)
        mem[ceil32(ceil32(arg1.length)) + 221] = arg4
        mem[ceil32(ceil32(arg1.length)) + 97] = 124
        mem[64] = ceil32(ceil32(arg1.length)) + 253
        if commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] > !minCommitmentAge:
            revert with 'NH{q', 17
        require commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] + minCommitmentAge <= block.timestamp
        mem[0] = sha3(sha3(arg1[all]), arg2, arg5, arg6, arg4)
        mem[32] = 5
        if commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] > !maxCommitmentAge:
            revert with 'NH{q', 17
        require commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] + maxCommitmentAge > block.timestamp
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                if idx > -2:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
                if idx > -3:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = s + 1
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
                if idx > -4:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 3
                s = s + 1
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
                if idx > -5:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 4
                s = s + 1
                continue 
            if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
                if idx > -7:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 6
                s = s + 1
                continue 
            if idx > -6:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 5
            s = s + 1
            continue 
        require s >= 3
        require ext_code.size(stor1)
        staticcall stor1.0x96e494e8 with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] = 0
        require ext_code.size(stor1)
        staticcall stor1.0xd6e4fa86 with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = arg1.length
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 124) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + arg1.length + 385] = 0
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = arg3
        require ext_code.size(stor2)
        staticcall stor2.0x50e9a715 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 >= 672 * 24 * 3600
        require msg.value >= ext_call.return_data[0]
        if not arg5:
            require not arg6
            require ext_code.size(stor1)
            call stor1.0xfca247ac with:
                 gas gas_remaining wei
                args sha3(arg1[all]), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit NameRegistered(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]), arg2);
        else:
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 321] = arg3
            require ext_code.size(stor1)
            call stor1.0xfca247ac with:
                 gas gas_remaining wei
                args sha3(arg1[all]), this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.0xddf7fcb0 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.0x3f15457f with:
                    gas gas_remaining wei
            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = sha3(ext_call.return_data[0], sha3(arg1[all]))
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg5
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x1896f70a with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6:
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = sha3(ext_call.return_data[0], sha3(arg1[all]))
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg6
                require ext_code.size(arg5)
                call arg5.setAddr(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = sha3(arg1[all])
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg2
            require ext_code.size(stor1)
            call stor1.0x28ed4f6c with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = this.address
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg2
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 417] = sha3(arg1[all])
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 349] = 96
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 445] = arg1.length
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 477 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 124) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + arg1.length + 477] = 0
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 381] = ext_call.return_data[0]
            mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
            emit NameRegistered(string arg1, bytes32 arg2, address arg3, uint256 arg4, uint256 arg5):
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 349 len ceil32(return_data.size) + ceil32(arg1.length) + 128],
                                sha3(arg1[all]),
                                arg2,
    else:
        if not arg6:
            mem[ceil32(ceil32(arg1.length)) + 129] = sha3(arg1[all])
            mem[ceil32(ceil32(arg1.length)) + 161] = address(arg2)
            mem[ceil32(ceil32(arg1.length)) + 181] = arg4
            mem[ceil32(ceil32(arg1.length)) + 97] = 84
            mem[64] = ceil32(ceil32(arg1.length)) + 213
            if commitments[sha3(arg1[all])][arg2][arg4] > !minCommitmentAge:
                revert with 'NH{q', 17
            require commitments[sha3(arg1[all])][arg2][arg4] + minCommitmentAge <= block.timestamp
            mem[0] = sha3(sha3(arg1[all]), arg2, arg4)
            mem[32] = 5
            if commitments[sha3(arg1[all])][arg2][arg4] > !maxCommitmentAge:
                revert with 'NH{q', 17
            require commitments[sha3(arg1[all])][arg2][arg4] + maxCommitmentAge > block.timestamp
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
                    if idx > -3:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 2
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
                    if idx > -4:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 3
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
                    if idx > -5:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 4
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
                    if idx > -7:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 6
                    s = s + 1
                    continue 
                if idx > -6:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 5
                s = s + 1
                continue 
            require s >= 3
            require ext_code.size(stor1)
            staticcall stor1.0x96e494e8 with:
                    gas gas_remaining wei
                   args sha3(arg1[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            commitments[sha3(arg1[all])][arg2][arg4] = 0
            require ext_code.size(stor1)
            staticcall stor1.0xd6e4fa86 with:
                    gas gas_remaining wei
                   args sha3(arg1[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 313] = arg1.length
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 345 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 84) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + arg1.length + 345] = 0
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 281] = arg3
            require ext_code.size(stor2)
            staticcall stor2.0x50e9a715 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg3 >= 672 * 24 * 3600
            require msg.value >= ext_call.return_data[0]
            if not arg5:
                require not arg6
                require ext_code.size(stor1)
                call stor1.0xfca247ac with:
                     gas gas_remaining wei
                    args sha3(arg1[all]), address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit NameRegistered(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]), arg2);
            else:
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 281] = arg3
                require ext_code.size(stor1)
                call stor1.0xfca247ac with:
                     gas gas_remaining wei
                    args sha3(arg1[all]), this.address, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.0xddf7fcb0 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.0x3f15457f with:
                        gas gas_remaining wei
                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 309] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313] = sha3(ext_call.return_data[0], sha3(arg1[all]))
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 345] = arg5
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x1896f70a with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313] = sha3(ext_call.return_data[0], sha3(arg1[all]))
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 345] = arg6
                    require ext_code.size(arg5)
                    call arg5.setAddr(bytes32 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313] = sha3(arg1[all])
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 345] = arg2
                require ext_code.size(stor1)
                call stor1.0x28ed4f6c with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313] = this.address
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 345] = arg2
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 377] = sha3(arg1[all])
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 313 len ceil32(return_data.size) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 309] = 96
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 405] = arg1.length
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 437 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 84) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                if ceil32(arg1.length) > arg1.length:
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + arg1.length + 437] = 0
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 341] = ext_call.return_data[0]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 373] = ext_call.return_data[0]
                emit NameRegistered(string arg1, bytes32 arg2, address arg3, uint256 arg4, uint256 arg5):
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 309 len ceil32(return_data.size) + ceil32(arg1.length) + 128],
                                    sha3(arg1[all]),
                                    arg2,
        else:
            require arg5
            mem[ceil32(ceil32(arg1.length)) + 129] = sha3(arg1[all])
            mem[ceil32(ceil32(arg1.length)) + 161] = address(arg2)
            mem[ceil32(ceil32(arg1.length)) + 181] = address(arg5)
            mem[ceil32(ceil32(arg1.length)) + 201] = address(arg6)
            mem[ceil32(ceil32(arg1.length)) + 221] = arg4
            mem[ceil32(ceil32(arg1.length)) + 97] = 124
            mem[64] = ceil32(ceil32(arg1.length)) + 253
            if commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] > !minCommitmentAge:
                revert with 'NH{q', 17
            require commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] + minCommitmentAge <= block.timestamp
            mem[0] = sha3(sha3(arg1[all]), arg2, arg5, arg6, arg4)
            mem[32] = 5
            if commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] > !maxCommitmentAge:
                revert with 'NH{q', 17
            require commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] + maxCommitmentAge > block.timestamp
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
                    if idx > -3:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 2
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
                    if idx > -4:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 3
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
                    if idx > -5:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 4
                    s = s + 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
                    if idx > -7:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    idx = idx + 6
                    s = s + 1
                    continue 
                if idx > -6:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                idx = idx + 5
                s = s + 1
                continue 
            require s >= 3
            require ext_code.size(stor1)
            staticcall stor1.0x96e494e8 with:
                    gas gas_remaining wei
                   args sha3(arg1[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            commitments[sha3(arg1[all])][arg2][arg5][arg6][arg4] = 0
            require ext_code.size(stor1)
            staticcall stor1.0xd6e4fa86 with:
                    gas gas_remaining wei
                   args sha3(arg1[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 353] = arg1.length
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 124) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + arg1.length + 385] = 0
            mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 321] = arg3
            require ext_code.size(stor2)
            staticcall stor2.0x50e9a715 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg3 >= 672 * 24 * 3600
            require msg.value >= ext_call.return_data[0]
            if not arg5:
                require not arg6
                require ext_code.size(stor1)
                call stor1.0xfca247ac with:
                     gas gas_remaining wei
                    args sha3(arg1[all]), address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit NameRegistered(Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], ext_call.return_data[0], sha3(arg1[all]), arg2);
            else:
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 321] = arg3
                require ext_code.size(stor1)
                call stor1.0xfca247ac with:
                     gas gas_remaining wei
                    args sha3(arg1[all]), this.address, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.0xddf7fcb0 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.0x3f15457f with:
                        gas gas_remaining wei
                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = sha3(ext_call.return_data[0], sha3(arg1[all]))
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg5
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x1896f70a with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6:
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = sha3(ext_call.return_data[0], sha3(arg1[all]))
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg6
                    require ext_code.size(arg5)
                    call arg5.setAddr(bytes32 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = sha3(arg1[all])
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg2
                require ext_code.size(stor1)
                call stor1.0x28ed4f6c with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353] = this.address
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 385] = arg2
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 417] = sha3(arg1[all])
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 353 len ceil32(return_data.size) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 349] = 96
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 445] = arg1.length
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 477 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 124) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                if ceil32(arg1.length) > arg1.length:
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + arg1.length + 477] = 0
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 381] = ext_call.return_data[0]
                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 413] = ext_call.return_data[0]
                emit NameRegistered(string arg1, bytes32 arg2, address arg3, uint256 arg4, uint256 arg5):
                                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 349 len ceil32(return_data.size) + ceil32(arg1.length) + 128],
                                    sha3(arg1[all]),
                                    arg2,
    if msg.value > ext_call.return_data[0]:
        if msg.value < ext_call.return_data[0]:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
