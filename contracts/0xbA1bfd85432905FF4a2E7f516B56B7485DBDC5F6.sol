contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 sub_b224015e;

function isAuth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function sub_b224015e(?) {
    return sub_b224015e
}

function _fallback() payable {
    revert
}

function sub_94bce145(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0[address(arg2)]:
        return bool(stor0[address(arg2)])
    return bool(stor1[address(arg1)][address(arg2)])
}

function disable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'not-self'
    if not stor0[address(arg1)]:
        revert with 0, 'already-disabled'
    stor0[address(arg1)] = 0
    sub_b224015e--
}

function sub_c7a9ee9b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if msg.sender != this.address:
        revert with 0, 'not-self'
    if not stor1[address(arg1)][address(arg2)]:
        revert with 0, 'already-disabled'
    stor1[address(arg1)][address(arg2)] = 0
}

function enable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'not-self-index'
    if not arg1:
        revert with 0, 'not-valid'
    if stor0[address(arg1)]:
        revert with 0, 'already-enabled'
    stor0[address(arg1)] = 1
    sub_b224015e++
}

function sub_5e12e1e9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if msg.sender != this.address:
        revert with 0, 'not-self-index'
    if not address(arg2):
        revert with 0, 'not-valid'
    if stor1[address(arg1)][address(arg2)]:
        revert with 0, 'already-enabled'
    stor1[address(arg1)][address(arg2)] = 1
}

function cast(address[] arg1, bytes[] arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if not stor0[address(msg.sender)]:
        revert with 0, 'permission-denied'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _6 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
        mem[_6] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[_6 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[_6 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
        delegate cd[((32 * idx) + arg1 + 36)] with:
             gas gas_remaining wei
            args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
