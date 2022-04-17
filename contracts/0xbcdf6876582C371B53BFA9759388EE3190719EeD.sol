contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1

const sub_fcd8b2a0(?) = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470


address owner;
mapping of uint256 prices;
mapping of uint8 sub_09f8110e;

function sub_09f8110e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_09f8110e[arg1]
}

function owner() payable {
    return owner
}

function prices(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return prices[arg1]
}

function _fallback() payable {
    revert
}

function sub_93329b52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_eeb269fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not prices[address(arg1)]:
        return 0
    if 1000000000000 * 10^18 * prices[address(arg1)] / 1000000000000 * 10^18 != prices[address(arg1)]:
        revert with 0, 'multiplication overflow'
    require 10^sub_09f8110e[address(arg1)]
    return (1000000000000 * 10^18 * prices[address(arg1)] / 10^sub_09f8110e[address(arg1)])
}

function getUnderlyingPriceUpdateTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return 0
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not prices[address(arg1)]:
        return 0
    if 1000000000000 * 10^18 * prices[address(arg1)] / 1000000000000 * 10^18 != prices[address(arg1)]:
        revert with 0, 'multiplication overflow'
    require 10^sub_09f8110e[address(arg1)]
    return (1000000000000 * 10^18 * prices[address(arg1)] / 10^sub_09f8110e[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not prices[ext_call.return_data[12 len 20]]:
        return 0
    if 1000000000000 * 10^18 * prices[ext_call.return_data[12 len 20]] / 1000000000000 * 10^18 != prices[ext_call.return_data[12 len 20]]:
        revert with 0, 'multiplication overflow'
    require 10^sub_09f8110e[ext_call.return_data[12 len 20]]
    return (1000000000000 * 10^18 * prices[ext_call.return_data[12 len 20]] / 10^sub_09f8110e[ext_call.return_data[12 len 20]])
}

function sub_2e92a1d2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if prices[address(arg1)]:
        revert with 0, 'Cannot reassign price'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg1):
        prices[address(arg1)] = arg2
        sub_09f8110e[address(arg1)] = 18
    else:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        prices[address(arg1)] = arg2
        sub_09f8110e[address(arg1)] = ext_call.return_data[31 len 1]
    emit 0x3f979d95: arg2, address(arg1)
}

function sub_38140dd7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'underlyings and prices should be 1:1'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        if prices[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Cannot reassign price'
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + cd[4] + 36)]):
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            prices[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = 2
            sub_09f8110e[address(cd[((32 * idx) + cd[4] + 36)])] = 18
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _32 = mem[_30]
            require mem[_30] == mem[_30 + 31 len 1]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            prices[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = 2
            sub_09f8110e[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(_32)
        mem[mem[64]] = cd[((32 * idx) + cd[36] + 36)]
        emit 0x3f979d95: cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}



}
