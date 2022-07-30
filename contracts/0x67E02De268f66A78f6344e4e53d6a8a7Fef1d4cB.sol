contract main {




// =====================  Runtime code  =====================


const sub_083fdda8(?) = 3000

const sub_382f6abf(?) = 10000


address owner;
uint256 factor;
address sub_26f4e77cAddress;
uint256 lastTimestamp;
mapping of uint8 stor4;
uint256 sub_70ecfe3b;

function lastTimestamp() payable {
    return lastTimestamp
}

function sub_26f4e77c(?) payable {
    return sub_26f4e77cAddress
}

function sub_3a80f990(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function factor() payable {
    return factor
}

function sub_70ecfe3b(?) payable {
    return sub_70ecfe3b
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3e2c0f94(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor4[address(arg1)] = 0
    emit 0x9686ca30: arg1
}

function sub_4e6fa33e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor4[address(arg1)] = 1
    emit 0xe7263267: arg1
}

function setPriceFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 3000:
        revert with 0, 'Price factor invalid!'
    factor = arg1
    emit UpdatedFactor(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4163e86b(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'Only oracle setter'
    if not sub_70ecfe3b:
        if lastTimestamp != 0:
            if 0 > sub_70ecfe3b:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 <= sub_70ecfe3b:
                revert with 0, 'lower price!'
            if sub_70ecfe3b < sub_70ecfe3b:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 > sub_70ecfe3b:
                revert with 0, 'higher price!'
    else:
        if factor * sub_70ecfe3b / sub_70ecfe3b != factor:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if lastTimestamp != 0:
            if factor * sub_70ecfe3b / 10000 > sub_70ecfe3b:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 <= sub_70ecfe3b - (factor * sub_70ecfe3b / 10000):
                revert with 0, 'lower price!'
            if (factor * sub_70ecfe3b / 10000) + sub_70ecfe3b < sub_70ecfe3b:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 > (factor * sub_70ecfe3b / 10000) + sub_70ecfe3b:
                revert with 0, 'higher price!'
    sub_70ecfe3b = arg1
    lastTimestamp = block.timestamp
    emit UpdatedPrice(arg1);
}



}
