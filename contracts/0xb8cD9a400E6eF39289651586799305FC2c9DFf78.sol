contract main {




// =====================  Runtime code  =====================


#
#  - _get(uint256 arg1)
#
const sub_15f14865(?) = 0xf3823a2504b5c5907fdd0f708efa0198be4d837c

const sub_3938471f(?) = 0x54edab30a7134a16a54218ae64c73e1daf48a8fb

const sub_d08cb247(?) = 0x3e5f198b46f3de52761b02d4ac8ef4ceceac22d6

const PERIOD = 600


uint256 stor0;
uint32 stor1;
address stor1; offset 32

function _fallback() payable {
    revert
}

function pairInfo() payable {
    return stor0, uint32(stor1.field_0), Mask(144, 0, stor1.field_32)
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return '', 0
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return '', 0
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return 1, 207438085116042146
}

function peek(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return 1, 207438085116042146
}

function peekSpot(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return 207438085116042146
}



}
