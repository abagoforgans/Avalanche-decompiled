contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_2a2ba669(?)
#  - sub_3a9a2b0d(?)
#  - waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_81279c7e(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_92816153(?)
#  - swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_b9fe89a3(?)
#  - sub_ba36d3bd(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const curvePool = 0x7f90122bf0700f9e7e1f688fe926940e8839f353

const usdt = 0xc7198437980c041c805a1edcba50c1ce5db95118

const wbtc = 0x50b7545627a5162f82a992c33b87adc75187b218

const usdc = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const weth = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const pangolinRouter = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const dai = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70


address adminAddress;
mapping of uint8 stor1;
array of address routers;

function routers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < routers.length
    return routers[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    adminAddress = arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    stor1[address(arg1)] = 1
}

function withdrawEther(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_9bfc4f15(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < ('cd', 36).length:
            require idx < ('cd', 4).length
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[((32 * s) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[mem[64] + 122 len 10]
            _101 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * s) + cd[36] + 36)])
            mem[mem[64] + 68] = -1
            _102 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_102 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_102 + 36 len 28]
            mem[64] = _101 + 164
            mem[_101 + 100] = 32
            mem[_101 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                revert with 0, 'Address: call to non-contract'
            _108 = mem[_102]
            u = _102 + 32
            v = _101 + 164
            t = mem[_102]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_101 + floor32(mem[_102]) + 164] = mem[_102 + -(mem[_102] % 32) + floor32(mem[_102]) + 64 len mem[_102] % 32] or Mask(8 * -(mem[_102] % 32) + 32, -(8 * -(mem[_102] % 32) + 32) + 256, mem[_101 + floor32(mem[_102]) + 164])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[_101 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_101 + 168 len _108 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_101 + 274 len 22]
                    s = s + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_101 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_101 + 168] = 32
                mem[_101 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _101 + 232] = mem[idx + _101 + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 264
            mem[64] = _101 + ceil32(return_data.size) + 165
            mem[_101 + 164] = return_data.size
            mem[_101 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_101 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_101 + ceil32(return_data.size) + 275 len 22]
                s = s + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_101 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_101 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _101 + ceil32(return_data.size) + 233] = mem[idx + _101 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_101 + ceil32(return_data.size) + 233]
        idx = idx + 1
        continue 
}



}
