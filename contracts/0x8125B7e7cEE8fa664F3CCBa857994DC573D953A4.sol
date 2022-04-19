contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_30db6d50(?)
#  - sub_4f721e99(?)
#  - withdraw(bool arg1, address arg2, address arg3, uint256 arg4)
#
const UniswapV2Router = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_1f560cf9(?) = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const getBlockNumber = block.number

const factory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const sub_d3a86817(?) = 5000

const HEALTH_FACTOR_LIQUIDATION_THRESHOLD = 10^18


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e5977729(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getReserveData(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return 0
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '', 0
    return ((10000 * ext_call.return_data[0]) + 5000 / 10000)
}



}
