contract main {




// =====================  Runtime code  =====================


#
#  - setMinVotes(uint256 arg1)
#  - externalCallEth(address[] arg1, bytes[] arg2, uint256[] arg3)
#  - sub_e10dddc2(?)
#  - addMultiOwner(address arg1)
#  - setDelay(uint256 arg1)
#  - sub_ec12dd94(?)
#  - removeMultiOwner(address arg1)
#  - sub_fd17c1f4(?)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = 0

const GRACE_PERIOD = (336 * 24 * 3600)


mapping of struct stor0;
mapping of uint8 stor1;
uint256 sub_6a51b63d;
uint256 minVotes;
uint256 delay;
mapping of uint8 stor99;

function minVotes() {
    return minVotes
}

function delay() {
    return delay
}

function sub_6a51b63d(?) {
    return sub_6a51b63d
}

function sub_e9bca324(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_2072cdd1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return uint32(stor0[arg1[all]].field_0), uint32(stor0[arg1[all]].field_0), uint64(stor0[arg1[all]].field_64)
}

function sub_9524b651(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor1[msg.sender]:
        revert with 0, 'Permission denied'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    if ceil32(arg1.length) <= arg1.length:
        _432 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
        if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32]) + 1][uint64(stor[_432].field_0)][address(msg.sender)].field_0):
            revert with 0, 'Incorrect vote data'
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
        if uint32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_32) <= 0:
            revert with 0, 'Incorrect vote data'
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
        uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32]) + 1][uint64(stor[_432].field_0)][address(msg.sender)].field_0) = 0
    else:
        _430 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
        if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32]) + 1][uint64(stor[_430].field_0)][address(msg.sender)].field_0):
            revert with 0, 'Incorrect vote data'
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
        if uint32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_32) <= 0:
            revert with 0, 'Incorrect vote data'
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
        uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32]) + 1][uint64(stor[_430].field_0)][address(msg.sender)].field_0) = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    if not uint32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_32):
        revert with 0, 17
    uint32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_32) = uint32(uint32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_32) - 1)
    emit CancelVote(Array(len=arg1.length, data=arg1[all]), msg.sender);
}



}
