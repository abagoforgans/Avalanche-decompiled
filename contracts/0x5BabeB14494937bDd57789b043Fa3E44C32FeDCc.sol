contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - _withdrawSome(uint256 arg1)
#
const sub_147d2a03(?) = 0x96bbfb78311227b805c968b070a81d358c13379

const klima = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const sub_61828385(?) = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const sub_6689feef(?) = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const balanceOf = ext_call.return_data[0]

const FEE_DENOMINATOR = 10000


uint256 restake;
uint256 sub_bfaf5d61;
uint256 sub_65f36ff6;
uint256 withdrawalFee;
uint256 lastHarvestTime;
address outAddress;
address poolAddress;
address wantAddress;
address governanceAddress;
uint32 stor9;
address controllerAddress;
uint256 stor9;
address strategistAddress;
uint256 totalStake;
uint32 stor12;
address stor12;
uint256 stor12;
mapping of uint8 stor13;

function pool() {
    return poolAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function farmers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function restake() {
    return restake
}

function governance() {
    return governanceAddress
}

function sub_65f36ff6(?) {
    return sub_65f36ff6
}

function totalStake() {
    return totalStake
}

function withdrawalFee() {
    return withdrawalFee
}

function out() {
    return outAddress
}

function sub_bfaf5d61(?) {
    return sub_bfaf5d61
}

function lastHarvestTime() {
    return lastHarvestTime
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    withdrawalFee = arg1
}

function sub_bdd21d9e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(stor12) = address(arg1)
}

function setReward(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    restake = arg1
    sub_bfaf5d61 = arg2
    sub_65f36ff6 = arg3
}

function removeFarmer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!authorized'
    stor13[address(arg1)] = 0
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if not arg1:
        revert with 0, 'address error'
    governanceAddress = arg1
}

function addFarmer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!authorized'
    if not arg1:
        revert with 0, 'address error'
    stor13[address(arg1)] = 1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!authorized'
    if not arg1:
        revert with 0, 'address error'
    strategistAddress = arg1
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor9)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0xa622ee7c with:
            gas gas_remaining wei
           args wantAddress
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 196 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 196 len 28]
    call wantAddress.mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
            if not mem[(4 * ceil32(return_data.size)) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function harvest() {
    if ext_code.hash(msg.sender) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(msg.sender):
            revert with 0, '!contract'
    if block.timestamp < lastHarvestTime:
        revert with 0, 'Wait for next harvest time'
    mem[100] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] - totalStake, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(address(stor12))
    call address(stor12).set_initReward(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastHarvestTime = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 96] = 68
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor12)
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0xb54f16fb19478766a268f172c9480f8da1a7c9c3):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 196 len 28]
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.mem[(6 * ceil32(return_data.size)) + 196 len 4] with:
         gas gas_remaining wei
        args mem[(6 * ceil32(return_data.size)) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 228] == bool(mem[(6 * ceil32(return_data.size)) + 228])
            if not mem[(6 * ceil32(return_data.size)) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function deposit() {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = 0x96bbfb78311227b805c968b070a81d3
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = approve(address arg1, uint256 arg2), 0x96bbfb78311227b805c968b, 0, 0, mem[ceil32(return_data.size) + 196 len 28]
        call wantAddress.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 296 len 96] = 0, 0x96bbfb78311227b805c968b070a81d358c13379, ext_call.return_data[0], mem[ceil32(return_data.size) + 296 len 28]
                call wantAddress.mem[ceil32(return_data.size) + 296 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 300 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 328] == bool(mem[ceil32(return_data.size) + 328])
                        if not mem[ceil32(return_data.size) + 328]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x96bbfb78311227b805c968b070a81d358c13379
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 296 len 96] = 0, 0x96bbfb78311227b805c968b070a81d358c13379, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 296 len 28]
                call wantAddress.mem[(2 * ceil32(return_data.size)) + 296 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 300 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 328] == bool(mem[(2 * ceil32(return_data.size)) + 328])
                        if not mem[(2 * ceil32(return_data.size)) + 328]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 96] = 0, 0x96bbfb78311227b805c968b070a81d358c13379, ext_call.return_data[0], mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 28]
                call wantAddress.mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 301 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 329])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x96bbfb78311227b805c968b070a81d358c13379
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, 0x96bbfb78311227b805c968b070a81d358c13379, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                call wantAddress.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(0x96bbfb78311227b805c968b070a81d358c13379)
        call 0x096bbfb78311227b805c968b070a81d358c13379.stake(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] + totalStake < totalStake:
            revert with 0, 'SafeMath: addition overflow'
        totalStake += ext_call.return_data[0]
}



}
