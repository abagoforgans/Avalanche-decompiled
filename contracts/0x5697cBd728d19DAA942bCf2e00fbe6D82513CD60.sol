contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;

function owner() {
    return owner
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

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function sub_ba87cc29(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
        _7 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
        mem[_7] = cd[((64 * idx) + cd[4] + 36)]
        mem[_7 + 32] = cd[((64 * idx) + cd[4] + 68)]
        call address(cd[((64 * idx) + cd[4] + 36)]) with:
           value cd[((64 * idx) + cd[4] + 68)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_645a1371(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 68).length:
        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
        _8 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        mem[_8] = cd[((64 * idx) + cd[68] + 36)]
        mem[_8 + 32] = cd[((64 * idx) + cd[68] + 68)]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
        mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x42842e0e with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[((64 * idx) + cd[68] + 36)]), cd[((64 * idx) + cd[68] + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
