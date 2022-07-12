contract main {




// =====================  Runtime code  =====================


#
#  - sub_c89cda6e(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 stor101;
uint256 stor151;
address beaconAddress;
address configAddress;
mapping of address sub_f6d8a744;

function beacon() {
    return beaconAddress
}

function paused() {
    return bool(stor101)
}

function config() {
    return configAddress
}

function owner() {
    return owner
}

function sub_f6d8a744(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f6d8a744[arg1]
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

function precomputeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sha3(0, this.address, address(arg1), sha3(code.data[7646 len 4212], mem[4340 len 12] >> 33440, beaconAddress, 64, 68, address(arg1), mem[4452 len 28] >> 288, 0)))
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

function _initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    beaconAddress = arg1
    configAddress = arg2
}

function sub_737d0988(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require cd[36] == address(cd[36])
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not sub_f6d8a744[address(cd[36])]:
        revert with 0, 'SA3'
    mem[96] = 0x1a271c4300000000000000000000000000000000000000000000000000000000
    mem[100] = 32
    require ('cd', 4).length == ('cd', 4).length
    mem[132] = ('cd', 4).length
    require ('cd', 4)[0] == ('cd', 4)[0]
    mem[164] = ('cd', 4)[0]
    require ('cd', 4)[1] == ('cd', 4)[1]
    mem[196] = ('cd', 4)[1]
    require ('cd', 4)[2] == ('cd', 4)[2]
    mem[228] = ('cd', 4)[2]
    require ('cd', 4)[3] == uint8(('cd', 4)[3])
    mem[260] = uint8(('cd', 4)[3])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(('cd', 4)[4] + cd[4] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(('cd', 4)[4] + cd[4] + 4)])
    mem[292] = 192
    mem[324] = cd[(('cd', 4)[4] + cd[4] + 4)]
    idx = 0
    s = ('cd', 4)[4] + cd[4] + 36
    t = (32 * cd[(('cd', 4)[4] + cd[4] + 4)]) + 356
    u = 356
    while idx < cd[(('cd', 4)[4] + cd[4] + 4)]:
        mem[u] = t - 356
        require cd[s] < calldata.size + -('cd', 4)[4] + -cd[4] - 131
        require cd[(cd[s] + ('cd', 4)[4] + cd[4] + 36)] == address(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 36)])
        mem[t] = address(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 36)])
        require cd[(cd[s] + ('cd', 4)[4] + cd[4] + 68)] == address(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 68)])
        mem[t + 32] = address(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 68)])
        require cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] < calldata.size + -cd[s] + -('cd', 4)[4] + -cd[4] - 67
        require cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)] <= test266151307()
        require cd[s] + ('cd', 4)[4] + cd[4] + 36 <= calldata.size - cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)]
        mem[t + 64] = 96
        mem[t + 96] = cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)]
        mem[t + 128 len cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)]] = call.data[cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 68 len cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)]]
        mem[t + cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)] + 128] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[(cd[s] + ('cd', 4)[4] + cd[4] + 100)] + cd[s] + ('cd', 4)[4] + cd[4] + 36)]) + 128
        u = u + 32
        continue 
    require ext_code.size(sub_f6d8a744[address(cd[36])])
    call sub_f6d8a744[address(cd[36])].mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (162 * cd[(('cd', 4)[4] + cd[4] + 4)]) + -mem[64] + 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}



}
