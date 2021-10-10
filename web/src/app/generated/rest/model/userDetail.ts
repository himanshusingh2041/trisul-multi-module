/**
 * Trisul Service
 * Trisul Service
 *
 * The version of the OpenAPI document: 0.1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { CodeDetail } from './codeDetail';
import { AddressDetail } from './addressDetail';
import { CardDetail } from './cardDetail';


/**
 * UserDetail model
 */
export interface UserDetail { 
    /**
     * Provide id
     */
    id?: number;
    /**
     * Provide username
     */
    username: string;
    /**
     * Provide email
     */
    email: string;
    /**
     * Provide password
     */
    password: string;
    title: CodeDetail;
    /**
     * Provide firstname
     */
    firstName: string;
    /**
     * Provide lastname
     */
    lastName: string;
    gender: CodeDetail;
    /**
     * Provide dob
     */
    dob: string;
    /**
     * Provide mobile
     */
    mobile: string;
    addressDetail: AddressDetail;
    cardDetail: CardDetail;
}

