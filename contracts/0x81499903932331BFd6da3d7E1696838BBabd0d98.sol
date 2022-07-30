contract main {




// =====================  Runtime code  =====================


const sub_0788c830(?) = (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])

const print = 0xf4625148efa2d3e160399b3ffb22230c9a4544ed

const pair = 0x6f3baa95a7d5cd5b6ca10f902571bc077b1d75ef

const sub_c5997258(?) = (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])

const vault = 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65


function _fallback() payable {
    call 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
}

function skim() {
    if eth.balance(this.address) > 0:
        call 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
}

function sub_72abc64e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c64a2769(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf4625148efa2d3e160399b3ffb22230c9a4544ed)
    staticcall 0xf4625148efa2d3e160399b3ffb22230c9a4544ed.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 10000 * 10^18:
        revert with 0, 'PrintSale: You have too much Print. Sorry.'
    require ext_code.size(0xf4625148efa2d3e160399b3ffb22230c9a4544ed)
    staticcall 0xf4625148efa2d3e160399b3ffb22230c9a4544ed.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if arg1 + ext_call.return_data[0] > 10000 * 10^18:
        revert with 0, 'PrintSale: Try a smaller amount.'
    require ext_code.size(0xf4625148efa2d3e160399b3ffb22230c9a4544ed)
    staticcall 0xf4625148efa2d3e160399b3ffb22230c9a4544ed.0x70a08231 with:
            gas gas_remaining wei
           args 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg1:
        revert with 0, 'PrintSale: The vault does not have enough $Print.'
    require ext_code.size(0x6f3baa95a7d5cd5b6ca10f902571bc077b1d75ef)
    staticcall 0x6f3baa95a7d5cd5b6ca10f902571bc077b1d75ef.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if arg1 and 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > -1 / arg1:
        revert with 'NH{q', 17
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18, 14, 'Required AVAX:', 0
    if msg.value < arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18:
        revert with 0, 'PrintSale: Not enough Avax was sent for the Print requested.'
    require ext_code.size(0xf4625148efa2d3e160399b3ffb22230c9a4544ed)
    call 0xf4625148efa2d3e160399b3ffb22230c9a4544ed.0x23b872dd with:
         gas gas_remaining wei
        args 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.value > arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18:
        if msg.value < arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
    call 0x15b4fc430bdafac16a931b8e2f9cd29cd69f1c65 with:
       value arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 64, arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18, 11, ' -> $AVAX :', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg1, 11, ' <- $PRINT:', 0
    emit Sale(msg.sender, arg1 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^18, arg1);
}



}
