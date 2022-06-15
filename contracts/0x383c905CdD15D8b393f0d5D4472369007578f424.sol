contract main {




// =====================  Runtime code  =====================


const sub_1bcc44aa(?) = 0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee


function _fallback() payable {
    revert
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return 'LINK/wMemo/Spell', 0
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return 'Chainlink wMemo/Spell', 0
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee)
    staticcall 0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100000000 * 10^18 / ext_call.return_data[0] and 635 * 10^16 * 3600 > -1 / 100000000 * 10^18 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return 1, 635 * 10^16 * 3600 * 100000000 * 10^18 / ext_call.return_data[0] / 10^18
}

function peek(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee)
    staticcall 0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100000000 * 10^18 / ext_call.return_data[0] and 635 * 10^16 * 3600 > -1 / 100000000 * 10^18 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return 1, 635 * 10^16 * 3600 * 100000000 * 10^18 / ext_call.return_data[0] / 10^18
}

function peekSpot(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee)
    staticcall 0x4f3ddf9378a4865cf4f28be51e10aecb83b7daee.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100000000 * 10^18 / ext_call.return_data[0] and 635 * 10^16 * 3600 > -1 / 100000000 * 10^18 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (635 * 10^16 * 3600 * 100000000 * 10^18 / ext_call.return_data[0] / 10^18)
}



}
