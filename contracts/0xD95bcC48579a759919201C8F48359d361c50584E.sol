contract main {




// =====================  Runtime code  =====================


#
#  - sub_525422cd(?)
#  - sub_b3277759(?)
#  - sub_b4af817e(?)
#  - sub_b89698d0(?)
#  - sub_dec5d8fb(?)
#  - sub_f09abd11(?)
#  - sub_f24bd252(?)
#
const VERSION = 0x312e312e30000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of struct sub_307d3b5b;

function sub_307d3b5b(?) payable {
    require calldata.size - 4 >= 32
    return sub_307d3b5b[arg1].field_256
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5cb31635(?) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        return bool(arg2)
    if arg2 == sub_307d3b5b[arg1].field_256:
        return True
    return bool(sub_307d3b5b[arg1][2][arg2].field_0)
}

function sub_b6dcc272(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_307d3b5b[arg1][arg2][0][0].field_0:
        if not sub_307d3b5b[arg1][arg2][0][1].field_0:
            return 0
    return 1
}

function sub_fda0d596(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_307d3b5b[arg1][arg2][0][0].field_0:
        if not sub_307d3b5b[arg1][arg2][0][1].field_0:
            if sub_307d3b5b[arg1][arg2][0][1].field_0 != 0:
                return 0
    return sub_307d3b5b[arg1][arg2][0][0].field_0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a8160e79(?) payable {
    require calldata.size - 4 >= 32
    if not sub_307d3b5b[arg1].field_256:
        return sub_307d3b5b[arg1].field_256
    s = sub_307d3b5b[arg1].field_256
    while sub_307d3b5b[arg1][2][sub_307d3b5b[arg1].field_256].field_256:
        mem[0] = sub_307d3b5b[arg1][2][s].field_256
        mem[32] = sha3(arg1, 101) + 2
        s = sub_307d3b5b[arg1][2][s].field_256
        continue 
    return s
}

function sub_cf1250f5(?) payable {
    require calldata.size - 4 >= 32
    if not sub_307d3b5b[arg1].field_256:
        return sub_307d3b5b[arg1].field_256
    s = sub_307d3b5b[arg1].field_256
    while sub_307d3b5b[arg1][2][sub_307d3b5b[arg1].field_256].field_512:
        mem[0] = sub_307d3b5b[arg1][2][s].field_512
        mem[32] = sha3(arg1, 101) + 2
        s = sub_307d3b5b[arg1][2][s].field_512
        continue 
    return s
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}



}
