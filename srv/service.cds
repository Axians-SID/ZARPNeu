using {
	Kuoni_S4HC_Customizing
} from './external/Kuoni_S4HC_Customizing';

@path : '/service/ZARP_NEU_Service'
service ZARP_NEU_Service
{
}

annotate ZARP_NEU_Service with @requires :
[
    'authenticated-user'
];
