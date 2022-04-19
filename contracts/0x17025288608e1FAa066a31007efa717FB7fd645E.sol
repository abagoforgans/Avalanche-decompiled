contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_e89b9ba7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg2) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
        staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x60f6a45006323b97d97cb0a42ac39e2b757ada63)
        staticcall 0x60f6a45006323b97d97cb0a42ac39e2b757ada63.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
    else:
        if address(arg2) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
            require ext_code.size(0x1852dc24d1a8956a0b356aa18ede954c7a0ca5ae)
            staticcall 0x1852dc24d1a8956a0b356aa18ede954c7a0ca5ae.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3676e4ee689d527ddb89812b63fad0b7501772b3)
            staticcall 0x3676e4ee689d527ddb89812b63fad0b7501772b3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
        else:
            if address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                require ext_code.size(0xfc1ada7a288d6fce0d29ccfaaa57bc9114bb2dbe)
                staticcall 0xfc1ada7a288d6fce0d29ccfaaa57bc9114bb2dbe.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x9c7b81a867499b7387ed05017a13d4172a0c17bf)
                staticcall 0x9c7b81a867499b7387ed05017a13d4172a0c17bf.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
                    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
                if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
                    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
                if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500
                if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                    require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                else:
                    if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                        require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
                        staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], 0
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                if not 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                            else:
                                if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                    revert with 'NH{q', 17
                                if not 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                           (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500
                    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0]:
                                if 0 / 10^6 * ext_call.return_data[0] <= 0:
                                    return 0 / 10^6 * ext_call.return_data[0], 0
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 0 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0]:
                                if 0 / 10^6 * ext_call.return_data[0] <= 0:
                                    return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.getAssetPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.getAssetPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 0 / 10^6 * ext_call.return_data[0], 0
                else:
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                    else:
                        if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                    revert with 'NH{q', 17
                return ext_call.return_data[0], 
                       (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000
            if address(arg2) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                require ext_code.size(0x848c080d2700cbe1b894a3374ad5e887e5ccb89c)
                staticcall 0x848c080d2700cbe1b894a3374ad5e887e5ccb89c.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x5b14679135dbe8b02015ec3ca4924a12e4c6c85a)
                staticcall 0x5b14679135dbe8b02015ec3ca4924a12e4c6c85a.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
                    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
                if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                    require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
                    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
                if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500
                if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                    require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                else:
                    if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                        require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
                        staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], 0
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                if not 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                            else:
                                if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                    revert with 'NH{q', 17
                                if not 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                           (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500
                    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0]:
                                if 0 / 10^6 * ext_call.return_data[0] <= 0:
                                    return 0 / 10^6 * ext_call.return_data[0], 0
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 0 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0]:
                                if 0 / 10^6 * ext_call.return_data[0] <= 0:
                                    return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.getAssetPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                staticcall stor1.getAssetPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 0 / 10^6 * ext_call.return_data[0], 0
                else:
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                    else:
                        if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                    revert with 'NH{q', 17
                return ext_call.return_data[0], 
                       (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000
            if address(arg2) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                require ext_code.size(0x8352e3fd18b8d84d3c8a1b538d788899073c7a8e)
                staticcall 0x8352e3fd18b8d84d3c8a1b538d788899073c7a8e.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x66904e4f3f44e3925d22ceca401b6f2da085c98f)
                staticcall 0x66904e4f3f44e3925d22ceca401b6f2da085c98f.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
            else:
                if address(arg2) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                    require ext_code.size(0x2dc0e35ec3ab070b8a175c829e23650ee604a9eb)
                    staticcall 0x2dc0e35ec3ab070b8a175c829e23650ee604a9eb.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x3484408989985d68c9700dc1cfdfeae6d2f658cf)
                    staticcall 0x3484408989985d68c9700dc1cfdfeae6d2f658cf.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                        require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
                        staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], 0
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 100 * 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                            else:
                                if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                           (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
                    if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
                        staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], 0
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 100 * 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                            else:
                                if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                           (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
                    if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                        staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        staticcall stor1.getAssetPrice(address rg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], 0
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 100 * 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                            else:
                                if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                           (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500
                    if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                        require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
                        staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                    else:
                        if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                            require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
                            staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor1)
                            staticcall stor1.getAssetPrice(address rg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor1)
                            staticcall stor1.getAssetPrice(address rg1) with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not uint255(ext_call.return_data[0]):
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 100 * 10^6 * ext_call.return_data[0], 0
                            else:
                                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 5000 > !(10000 * ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    if not 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return 0 / 100 * 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                                else:
                                    if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                        revert with 'NH{q', 17
                                    if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                        revert with 'NH{q', 17
                                    if not 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                        return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                               (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500
                        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            require ext_code.size(stor1)
                            staticcall stor1.getAssetPrice(address rg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor1)
                            staticcall stor1.getAssetPrice(address rg1) with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not uint255(ext_call.return_data[0]):
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 100 * 10^6 * ext_call.return_data[0]:
                                    if 0 / 100 * 10^6 * ext_call.return_data[0] <= 0:
                                        return 0 / 100 * 10^6 * ext_call.return_data[0], 0
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                            else:
                                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 5000 > !(10000 * ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 0 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 100 * 10^6 * ext_call.return_data[0]:
                                    if 0 / 100 * 10^6 * ext_call.return_data[0] <= 0:
                                        return 0 / 100 * 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 100 * 10^6 * ext_call.return_data[0], 0
                    else:
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                        else:
                            if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000
                if address(arg2) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                        require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
                        staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
                            staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                                require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                                staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                                    require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
                                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                                        require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
                                        staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(arg3)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    else:
                                        if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                            require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                                            staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg3)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.getAssetPrice(address rg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    revert with 'NH{q', 18
                require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
                staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x2920cd5b8a160b2addb00ec5d5f4112255d4ae75)
                staticcall 0x2920cd5b8a160b2addb00ec5d5f4112255d4ae75.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
        staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.getAssetPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.getAssetPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], 0
        else:
            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 5000 > !(10000 * ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 0 / 10^18 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
            else:
                if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                           (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
    if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        require ext_code.size(0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a)
        staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.getAssetPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.getAssetPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], 0
        else:
            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 5000 > !(10000 * ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 0 / 10^18 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
            else:
                if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                           (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500
    if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
        staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.getAssetPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.getAssetPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], 0
        else:
            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 5000 > !(10000 * ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 0 / 10^18 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
            else:
                if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                           (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500
    if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
        require ext_code.size(0xd45b7c061016102f9fa220502908f2c0f1add1d7)
        staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
    else:
        if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
            require ext_code.size(0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d)
            staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.getAssetPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.getAssetPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint255(ext_call.return_data[0]):
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 0 / 10^18 * ext_call.return_data[0], 0
            else:
                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 5000 > !(10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 0 / 10^18 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                else:
                    if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000
            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 100 * 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500
        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(stor1)
            staticcall stor1.getAssetPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.getAssetPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint255(ext_call.return_data[0]):
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0]:
                    if 0 / 10^18 * ext_call.return_data[0] <= 0:
                        return 0 / 10^18 * ext_call.return_data[0], 0
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
            else:
                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 5000 > !(10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 0 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0]:
                    if 0 / 10^18 * ext_call.return_data[0] <= 0:
                        return 0 / 10^18 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
            revert with 'NH{q', 18
        require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint255(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
            return 0 / 10^18 * ext_call.return_data[0], 0
    else:
        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 5000 > !(10000 * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], (10000 * ext_call.return_data[0]) + 5000 / 10000
        else:
            if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                       (10000 * ext_call.return_data[0]) + 5000 / 10000
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 'NH{q', 17
    if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000
}



}
