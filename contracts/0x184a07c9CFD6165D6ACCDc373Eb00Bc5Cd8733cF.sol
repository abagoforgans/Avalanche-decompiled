contract main {




// =====================  Runtime code  =====================


const name = 'SPELLPOWER', 0

const sub_0d5810c2(?) = 0xd6a4f121ca35509af06a0be99093d08462f53052

const totalSupply = (5 * ext_call.return_data[0])

const sub_19a03569(?) = 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917

const sub_292de648(?) = 0x35fa7a723b3b39f15623ff1eb26d8701e7d6bb21

const decimals = 9

const bento = 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f

const wMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const symbol = 'SPELLPOWER', 0

const sub_97d33c07(?) = 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df

const sub_ce037715(?) = 0x56984f04d2d04b2f63403f0ebedd3487716ba49d

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9


function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x35fa7a723b3b39f15623ff1eb26d8701e7d6bb21)
    staticcall 0x35fa7a723b3b39f15623ff1eb26d8701e7d6bb21.userCollateralShare(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x56984f04d2d04b2f63403f0ebedd3487716ba49d)
    staticcall 0x56984f04d2d04b2f63403f0ebedd3487716ba49d.userCollateralShare(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xda67235dd5787d67955420c84ca1cecd4e5bb3b, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(0xf4f46382c2be1603dc817551ff9a7b333ed1d18f)
    staticcall 0xf4f46382c2be1603dc817551ff9a7b333ed1d18f.toAmount(address arg1, uint256 arg2, bool arg3) with:
            gas gas_remaining wei
           args 0xda67235dd5787d67955420c84ca1cecd4e5bb3b, 3 * ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.wMEMOToMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args (2 * ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
    staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.0x93f1a40b with:
            gas gas_remaining wei
           args 45, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((13 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(0xf64e1c5b6e17031f5504481ac8145f4c3eab4917)
    staticcall 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args 0xf64e1c5b6e17031f5504481ac8145f4c3eab4917
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] and 2 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
    staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df)
    staticcall 0x113f413371fc4cc4c9d6416cf1de9dfd7bf747df.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 3 * ext_call.return_data[0] > -(2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if (3 * ext_call.return_data[0]) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) > -(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return ((3 * ext_call.return_data[0]) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
}



}
